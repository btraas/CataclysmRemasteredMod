<?php

	/*
		Sound File Checker 1.1 - Brayden Traas
		Run through commands.lua and status.lua to ensure expected files exist
		Also, Checks to see if there's unused files in the ship folders.

		WARNING! This will only work for declarations in the format: (shipFiles|statusFiles)["shipname"]["FILENAME_BEFORE_NUM"] = num
		This will not check syntax, only check that the given files exist.
	
		1.1: Option --repair added... Will backup & attempt to comment out erroneous lines
		1.2: Option --fixlua added... Will create lua files for any audio file that doens't have one already.
	*/

	$VERSION = 1.2;

	$ERROR = "\033[31mERROR\033[0m";
	$WARNING = "\033[33mWARNING\033[0m";

	$FILE_COMMANDS = './speechlogic/commands.lua';
	$FILE_STATUS = './speechlogic/status.lua';

	$FILE_EXAMPLELUA = './example.lua';
	
	$filenames = array( 'shipFiles' => $FILE_COMMANDS, 'statusFiles' => $FILE_STATUS );

	$FOLDER_MASTER = '../sound/speech';
	$FOLDER_BST = '../sound/speech/allships/Beast';
	$FOLDER_SMT = '../sound/speech/allships/KuunLan';

	
	$SMT_PREFIX = 'hgn_smt';
	$BST_PREFIX = 'bst';

	$fixLua = false;
	switch(strtolower(@$argv[1]))
	{
		case '--fixlua' : $FIX = false; $fixLua = true; break;
		case '--repair' : $FIX = true; break;
		default			: $FIX = false;
	}

	$validateFix = ($FIX ? "Validating and Repairing" : "Validating");

	$errorLines = array();
	$warningLines = array();


	echo "CRMod Sound File Checker $VERSION - Brayden Traas".PHP_EOL.PHP_EOL;
	echo "$validateFix $FILE_COMMANDS and $FILE_STATUS...".PHP_EOL;
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".PHP_EOL.PHP_EOL;


	importLuaScript($FILE_COMMANDS);
	importLuaScript($FILE_STATUS);
	
	//print_r($ships);
	//print_r($speechLines);

	$stats = checkFiles();

	$errorCount = count($stats['problemShips']);
	foreach($errorLines AS $scriptErrors)
	{
		$errorCount += count($scriptErrors);
	}
	$warningCount = count($stats['warningShips']);
	foreach($warningLines AS $scriptWarnings)
	{
		$warningCount += count($scriptWarnings);
	}


	if($errorCount < 1) $FIX = false;

	if($FIX == false) // By default, display results. Else attempt to fix.
	{
		displayStats($stats);
	}
	else 
	{
		echo "Errors found:    \033[31m".$errorCount."\033[0m\nAttempting to repair...\n";
		if(copy($FILE_COMMANDS,"$FILE_COMMANDS.bak") == false || copy($FILE_STATUS, "$FILE_STATUS.bak") == false)
		{
			echo "Unable to backup scripts. Exiting!";
			return false;	
		}


		if(fix() == false) 	echo "Unable to repair scripts.\n";
		else				echo "Scripts repaired. Run $argv[0] (without $argv[1]) to view current status.\n";
		exit();
		
	}


function displayStats($stats) // {{{
{
	global $ERROR, $WARNING, $errorLines, $warningLines;

	$errorCount = count($stats['problemShips']);
	foreach($errorLines AS $scriptErrors)
	{
		$errorCount += count($scriptErrors);
	}

	$warningCount = count($stats['warningShips']);
	foreach($warningLines AS $scriptWarnings)
	{
		$warningCount += count($scriptWarnings);
	}




	foreach($errorLines AS $scriptFileName => $scriptFile)
	{
		foreach($scriptFile AS $lineNum => $line)
		{
			echo str_pad("$ERROR in ".basename($scriptFileName)."\033[32m:$lineNum\033[0m ($line[ship]):", 80)." $line[msg]".PHP_EOL;
		}
	}
	
	foreach($stats['problemShips'] AS $shipName => $ship)
    {
        echo str_pad("$ERROR in ".basename($ship['script'])."\033[32m".@$ship[line]."\033[0m ($shipName):", 80)." $ship[msg]".PHP_EOL;
    }
   	echo PHP_EOL;

	foreach($warningLines AS $scriptFileName => $scriptFile)
	{
		foreach($scriptFile AS $lineNum => $line)
		{
			echo str_pad("$WARNING in ".basename($scriptFileName)."\033[32m:$lineNum\033[0m ($line[ship]):", 80)." $line[msg]".PHP_EOL;
		}
	}
    foreach($stats['warningShips'] AS $shipName => $ship)
    {
    	echo str_pad("$WARNING for $shipName:",71)." $ship[msg]".PHP_EOL;
    }

	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".PHP_EOL.PHP_EOL;

	echo "Ships defined:  $stats[ships]".PHP_EOL;
    echo "Unique ships:   $stats[uniqueShips]".PHP_EOL;
    echo "Sounds defined: $stats[numSoundsSet]".PHP_EOL;
    echo "Errors found:   \033[31m".$errorCount."\033[0m";
    if($errorCount > 0 ) echo " (run again with --repair to attempt an auto fix)";
    echo PHP_EOL;
    echo "Warnings found: \033[33m".$warningCount."\033[0m".PHP_EOL;



} // }}}

	function checkFiles() // {{{
	{
		global $speechTypes, $speechLines, $errorLines, $warningLines, $filenames, $FOLDER_SMT, $FOLDER_BST, $SMT_PREFIX, $BST_PREFIX;
		$stats = array( 'ships'=>0, 'uniqueShips'=>0, 'problemShips'=>array(), 'warningShips'=>array(), 'numSoundsSet'=>0);
		
		global $fixLua, $FILE_EXAMPLELUA;

	
		foreach($speechTypes AS $speechTypeName => $ships) // eg 'shipFiles'
		{
			$this_filepath = $filenames[$speechTypeName];
			foreach($ships AS $shipName => $ship) // eg 'hgn_smt_ms'
			{
				$stats['ships']++;
				if(!empty($ship['sameas'])) continue; // skip ships that just link to other ships
				$stats['uniqueShips']++;
				
				if(preg_match("/$SMT_PREFIX/i", $shipName))		$folder = "$FOLDER_SMT/$ship[folder]";
				elseif(preg_match("/$BST_PREFIX/i", $shipName))	$folder = "$FOLDER_BST/$ship[folder]";
				elseif($shipName == 'shared')					$folder = "$FOLDER_SMT/$ship[folder]";
				elseif($shipName == 'bshared')					$folder = "$FOLDER_BST/$ship[folder]";
				else
				{

					$stats['problemShips'][$shipName] = $ship;
					$stats['problemShips'][$shipName]['msg'] = "Race not found!";
					$stats['problemShips'][$shipName]['script'] = $this_filepath;
					continue;
				}
				
				$shipFiles = array();
				foreach($ship AS $speech => $count) // For each attribute, (sound, sameas, folder etc)
				{

					if($speech == 'sameas' || $speech == 'folder') continue;
					$shipFiles[] = strtolower($speech); // need lowercase for reverse lookup
					$stats['numSoundsSet'] += $count;

					$this_line = $speechLines[$speechTypeName][$shipName][$speech];

					for($i=1; $i<=$count; $i++)
					{
						// Check to find defined speech that doesn't exist
						$filepath = $folder.$speech."_"."$i.wav";
						if(!file_exists($filepath))
						{
							$errorLines[$this_filepath][$this_line] = array(	'msg' => "Missing file: $filepath",
																				'ship' => $shipName	);
						}

						// Check to find lua file that doesn't exist
						$luapath = $folder.$speech."_"."$i.lua";
						//echo "checking for $luapath... ";
						if(!file_exists($luapath))
						{
							//echo "Lua file not found!";
							$stats['errorShips'][$shipName]['msg'] = "Missing LUA file: $luapath";
							if($fixLua) 
							{
								echo "\n Attempting to generate LUA file in $luapath... ";
								if(copy($FILE_EXAMPLELUA, $luapath)) echo "success!\n";
								else echo "fail!\n";
							}
						}
						else
						{
						//	echo "exists!\n";
						}
						//echo "\n";


					}

					// Check to find secondary speech files that aren't used
					$filecount = 0;
					$files = glob("$folder$speech*.wav");
					foreach($files AS $f)
					{
						$matchString = "/".$speech."_[1-9][0-9]*.wav/";
						//echo $matchString.PHP_EOL;
						if(preg_match($matchString, $f)) $filecount++;
					}
					if($filecount > $count) 
					{
						$warningLines[$this_filepath][$this_line] = array(  'msg' => ($filecount - $count) . " unused $speech files",
                                                                            'ship' => $shipName );
					}
				}

				// Check to find speech that isn't used
				$files = glob("$folder*.wav");
				foreach($files AS $file)
				{
					$speechname = preg_replace("/_[1-9].wav/", "", strtolower(basename($file)));
					if(!in_array($speechname, $shipFiles))
					{
						 $stats['warningShips'][$shipName]['msg'] = "$speechname speech is provided, but unused";
					}
				}


				if(array_key_exists($shipName, $stats['warningShips'])) continue; 
				// we don't want to overwrite a greater warning with a lesser warning
				// Check to find invalid files
				$files = glob("$folder*");
				foreach($files AS $file)
				{
					if(!preg_match("/_[1-9][0-9]*.wav/i", basename($file)))
					{

						if(preg_match("/.wav/i", basename($file))) 	$msg = "Invalid filename: ".basename($file);
						else										$msg = "Invalid file format: ".basename($file);

						$stats['warningShips'][$shipName]['msg'] = $msg;

					}
				}

			}
		}
		return $stats;
		
	} // }}}
	function importLuaScript($file) // {{{
	{
		$contents = file($file);
		$i = 0;
		foreach($contents AS $line)
		{
			$i++;
			importLuaLine($line, $i);
		}
	} // }}}
	function importLuaLine($line, $lineNum) // Interpret this line of Lua {{{
	{
		global $speechTypes, $speechLines;
		$arr = "";
		$ship = "";
		$attr = "";
		$value = "";
		
		$line = (strstr($line, '--') ? substr($line, 0, strpos($line, '--')) : $line); // remove comments
		$line = trim($line);															// Trim whitespace	
		if(strlen($line) < 1) return -1;	// Ignore blank/comment lines
		$line_bak = $line;
		
		if(!preg_match("/(shipFiles|statusFiles)\[\"[a-zA-Z_]{1,}\"\]/", $line)) return 1; // Exit early if not a shipFiles definition
		
		if(preg_match("/shipFiles/", $line)) 		$arr = "shipFiles";
		elseif(preg_match("/statusFiles/", $line)) 	$arr = "statusFiles";
		
		//echo "This is a ship/status file!\n";
		
		$line = preg_replace('/(shipFiles|statusFiles)\[\"/', "", $line);			 // Remove first part of array
		$ship = (strstr($line, '"') ? substr($line, 0, strpos($line, '"')) : $line); // remove everything after and including "
		
		if(preg_match("/(shipFiles|statusFiles)\[\"[a-zA-Z_]{1,}\"\]\s*=\s*{\s*}/", $line_bak)) $speechLines[$arr][$ship]['line'] = $lineNum;
		if(!preg_match("/((shipFiles|statusFiles)\[\"[a-zA-Z_]{1,}\"\]\[\"[a-zA-Z_]{1,}\"\])/", $line_bak)) return 1; // Exit early if not a sound file declaration


		$line = preg_replace('/'.$ship.'\"\]\[\"/', "", $line);
		$attr = (strstr($line, '"') ? substr($line, 0, strpos($line, '"')) : $line);
		
		$line = (strstr($line, '=') ? substr($line, strpos($line, '=') + 1) : $line);
		$value = trim($line, "; \"\'\t\n\r\0\x0B");
		
		//echo $line_bak .PHP_EOL;
		//echo $arr.'["'.$ship.'"]["'.$attr.'"] = "'.$value.'"';
		//echo PHP_EOL;
		
		if(empty($arr) || empty($ship) || empty($attr)) return 1;
		$speechTypes[$arr][$ship][$attr] = $value;
		$speechLines[$arr][$ship][$attr] = $lineNum;
		
		//echo PHP_EOL; 
		return 0;
		
	} // }}}
	
function fix() // {{{
{
	global $FILE_COMMANDS, $FILE_STATUS, $errorLines;


	//print_r($errorLines);

	foreach($errorLines AS $filename => $data) // For each (both) files
	{
		$file = file($filename);
		$i = 0;
		$output_file = array();
		foreach($file AS $line)
		{
			$i++;
			
			if(array_key_exists($i, $data)) 
			{
				$output_file[] = "-- CR CSF -- ".$line;
			//	echo "Adding -- CR CSF -- to $filename line $i\n";
			}
			else							$output_file[] = $line;
		}
		if(file_put_contents($filename, $output_file) === false) return false;
	}
	return true;



} // }}}













?>

<?php

	/*
		RodohRM - Brayden Traas
	*/

	$VERSION = 1.0;

	$ERROR = "\033[31mERROR\033[0m";
	$WARNING = "\033[33mWARNING\033[0m";

	$ship = strtolower(@$argv[1]);
	$force = (@$argv[2] == '-f' || @$argv[3] == '-f');
	$src_dir = "../dae";
	$build_dir = "../ship";
	if(!empty(@$argv[2]) && @$argv[2] != '-f') $build_dir = "../$argv[2]";
	elseif(!empty(@$argv[3]) && @$argv[3] != '-f') $build_dir = "../$argv[3]";

	echo "CRMod RODOHRM v$VERSION - Brayden Traas".PHP_EOL.PHP_EOL;
	echo "$WARNING: All meshes must be re-imported with CFHodEd (HW2) before running this script!".PHP_EOL.PHP_EOL;
	echo "Preparing $ship for RODOH...".($force ? " (force)":"").PHP_EOL;
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".PHP_EOL.PHP_EOL;

	$file = "$build_dir/$ship/$ship.hod";

	$lastline = `tail -n 1 $file`;

	// {{{ Checking file
	if(empty($lastline)) 
	{
		echo "$file not found! Exiting...";
		exit();
	}
	if(strpos($lastline, 'lmoloney') !== false)
	{
		echo "$ship is a HW2 HOD file. Exiting...";
		exit();
	}
	if(strpos($lastline, 'HODOR') === false)
	{
		echo "$ship is not a HWRM HOD file. ";
		if(!$force) 
		{
			echo "Exiting...";
			exit();
		}
		else echo "Attempting to convert anyways...".PHP_EOL;
	}
	if(strpos($lastline, "bitvenom") !== false) echo "$ship type: Vanilla HOD - Converted by bitvenom (Gearbox) ";
	else echo "$ship type: Custom HOD - Converted by HODOR ";

	$arr = explode('HODOR ', $lastline);
    $date = $arr[1];

	echo "on $date".PHP_EOL.PHP_EOL;
	// }}}

	// Now the actual work.
	

	// backup file but don't overwrite anything
	$bak_file = "$file.bak";
	$num=0;
	if(file_exists($bak_file));
	{
	//	echo "file exists... $bak_file\n";
		while(file_exists($bak_file))
		{
			$num++;
			$bak_file = "$file.bak$num";
		}
	}
	echo "Backing up to $bak_file...".PHP_EOL;
	`cp $file $bak_file`;
	
	$lastchars = "FOOWNR\0\0\0";

	//echo "last chars: $lastchars".PHP_EOL;
	//$new_lastline = substr($lastline, 0, strpos($lastline, "FOOWNR\0\0\0")+9);
	
	$fp = fopen($file, 'r+');
	$pos = filesize($file);
	$pos = max($pos - 1024, 0);		// find last 1024 pos
	fseek($fp, $pos);				// seek to last 1024
	$tmp = fread($fp, 1024);		// read 1024 bytes
	$tmppos = strpos($tmp, $lastchars) + strlen($lastchars); // get pos after lastchars
	if($tmppos !== false)			// if lastchars found
	{
		echo "Removing HWRM flag...".PHP_EOL;
		ftruncate($fp, $pos + $tmppos);	// truncate here
	}
		
	fclose($fp);
	//echo "closed.\n";
	echo "Appending HW2 flag...".PHP_EOL;
	`cat append.hod.part >> $file`;

	// append hw2 hodpart file to hod

	//echo "before: ".$lastline.PHP_EOL;
	//echo "after: $new_lastline";
	
	echo "done.";
?>

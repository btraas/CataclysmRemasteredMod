<?php

	/*
		Convert - Brayden Traas
	*/

	$VERSION = 1.0;

	$ERROR = "\033[31mERROR\033[0m";
	$WARNING = "\033[33mWARNING\033[0m";

	$prog = strtolower(@$argv[1]);
	$def_src_dir = "../dae";
	$def_build_dir = "../ship";

	$input_dir = "";
	$output_dir = "";	

	$rodohrm=false;
	$here=false;		// used for oddballs like fx

	if($prog=='rodohrm') 
	{
		$prog='rodoh';
		$rodohrm=true;
	}

	if($prog=='rodoh') 		
	{
		$input_dir  = empty(@$argv[2]) ? $def_build_dir : "../".$argv[2];
		$output_dir = empty(@$argv[3]) ? $def_src_dir	: "../".$argv[3];

		$ext = "{hod,HOD}";
	}
	elseif($prog=='hodor' || $prog=='hodor1')
	{
		$input_dir	= empty(@$argv[2]) ? $def_src_dir 	: "../".$argv[2];
		$output_dir = empty(@$argv[3]) ? $def_build_dir : "../".$argv[3];	
	
		$ext = "{dae,DAE}";
	}
	else 
	{
		printUsage();
		exit(1);
	}


	if(@$argv[3] == 'here') 
	{
		$output_dir = $input_dir;
		$here = true;
	}

	$input_folder  = str_replace("../", "", $input_dir);
	$output_folder = str_replace("../", "", $output_dir);

	$inputFiles = $here ? "$input_dir/*.$ext" : "$input_dir/*/*.$ext";

	echo "CRMod Convert v$VERSION - Brayden Traas".PHP_EOL.PHP_EOL;
	echo "Using $prog".($rodohrm ? " RM":"")."...".PHP_EOL;
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".PHP_EOL.PHP_EOL;


	$ships = glob($inputFiles, GLOB_BRACE);
	print_r($ships);


	echo PHP_EOL.PHP_EOL;

	`date > $prog.log`;
	if($rodohrm) `date > rodohrm.log`;

	foreach($ships AS $ship)
	{
		$ship = trim(substr($ship, strrpos($ship, '/') + 1));
		$ship = strstr($ship, ".", true);

		if($rodohrm) exec("php ./rodohrm.php $ship $input_folder >> rodohrm.log"); // convert to rm format


		$script = $here ? "$prog.here.params" : "$prog.custominout.params";

		$cmd = "echo a | ./$prog -"."\\$"."SHIP_NAME=$ship -"."\\$"."INPUT_BASE=$input_folder -"."\\$"."OUTPUT_BASE=$output_folder -script=$script >> $prog.log";
		echo "Converting $ship with cmd:$cmd".PHP_EOL.PHP_EOL;
		exec($cmd);
	}	

	function printUsage()
	{
		echo "Usage: $argv[0] hodor|hodor1|rodoh|rodohrm [input dir] [output dir]".PHP_EOL;
	}
?>

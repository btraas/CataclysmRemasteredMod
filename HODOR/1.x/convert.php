<?php

	/*
		Convert - Brayden Traas
	*/

	$VERSION = 1.0;

	$ERROR = "\033[31mERROR\033[0m";
	$WARNING = "\033[33mWARNING\033[0m";

	$prog = strtolower(@$argv[1]);
	$src_dir = "../dae";
	$build_dir = empty(@$argv[2]) ? "../ship" : "../".$argv[2];
	$input_dir = "";
	
	$rodohrm=false;

	if($prog=='rodohrm') 
	{
		$prog='rodoh';
		$rodohrm=true;
	}

	if($prog=='rodoh') 		
	{
		$input_dir = $build_dir;
		$ext = "hod";
	}
	elseif($prog=='hodor') 	
	{
		$input_dir = $src_dir;
		$ext = "dae";
	}
	else exit(1);

	$inputFiles = "$input_dir/*/*.$ext";

	echo "CRMod Convert v$VERSION - Brayden Traas".PHP_EOL.PHP_EOL;
	echo "Using $prog".($rodohrm ? " RM":"")."...".PHP_EOL;
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".PHP_EOL.PHP_EOL;


	$ships = glob($inputFiles);
	print_r($ships);


	echo PHP_EOL.PHP_EOL;

	foreach($ships AS $ship)
	{
		$ship = trim(substr($ship, strrpos($ship, '/') + 1));
		$ship = strstr($ship, ".", true);

		if($rodohrm) exec("php ./rodohrm.php $ship ".str_replace("../", "", $build_dir)); // convert to rm format

		$cmd = "./$prog -"."\\$"."SHIP_NAME=$ship -"."\\$"."INPUT_BASE=$input_dir -script=$prog.customin.params";
		echo "Converting $ship with cmd:$cmd".PHP_EOL.PHP_EOL;
		exec($cmd);
	}	


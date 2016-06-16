<?php

	/*
		Convert - Brayden Traas
	*/

	$VERSION = 1.0;

	$ERROR = "\033[31mERROR\033[0m";
	$WARNING = "\033[33mWARNING\033[0m";

	$prog = strtolower(@$argv[1]);
	$src_dir = "../dae";
	$build_dir = "../ship";
	

	if($prog=='rodoh') 		$inputFiles = "$build_dir/*/*.hod";
	elseif($prog=='hodor') 	$inputFiles = "$src_dir/*.dae";
	else exit(1);

	echo "CRMod Convert v$VERSION - Brayden Traas".PHP_EOL.PHP_EOL;
	echo "Using $prog...".PHP_EOL;
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".PHP_EOL.PHP_EOL;


	$ships = glob($inputFiles);
	print_r($ships);


	echo PHP_EOL.PHP_EOL;

	foreach($ships AS $ship)
	{
		$ship = trim(substr($ship, strrpos($ship, '/') + 1));
		$ship = strstr($ship, ".", true);
		$cmd = "./$prog -"."\\$"."SHIP_NAME=$ship -script=$prog.params";
		echo "Converting $ship with cmd:$cmd".PHP_EOL.PHP_EOL;
		exec($cmd);
	}	


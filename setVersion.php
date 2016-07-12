<?php

	/*
		SetVersion - Brayden Traas
	*/

	$VERSION = 1.1;

	$ERROR = "\033[31mERROR\033[0m";
	$WARNING = "\033[33mWARNING\033[0m";


	$file = "ui/newui/main/crmod/version.lua";
	$ver = @$argv[1];


	echo "CRMod setVersion v$VERSION - Brayden Traas".PHP_EOL.PHP_EOL;
	echo "Setting CRMod version ".($ver)."...".PHP_EOL;
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".PHP_EOL.PHP_EOL;


	
	if(empty($ver)) echo "$ERROR: Unable to set version";
	else 
	{
		$success = file_put_contents($file, "CRMOD_VERSION = \"$ver\"");
		if($success!=false) echo "Success. Set version $ver.";
	}
	
	echo PHP_EOL.PHP_EOL;



?>

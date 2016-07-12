<?php

	/*
		SetSinglePlayer - Brayden Traas
	*/

	$VERSION = 1.0;

	$ERROR = "\033[31mERROR\033[0m";
	$WARNING = "\033[33mWARNING\033[0m";

	$FILE_SP = './ui/newui/main/crmod/newmainmenu_sp.lua';
	$FILE_MAIN = './ui/newui/main/crmod/newmainmenu_main.lua';
	$FILE_MASTER = './ui/newui/main/newmainmenu.lua';
	


	$ON = (strtolower(@$argv[1]) == 'off') ? false : true;



	echo "CRMod SetSinglePlayer v$VERSION - Brayden Traas".PHP_EOL.PHP_EOL;
	echo "Setting Single player ".($ON ? "on":"off")."...".PHP_EOL;
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".PHP_EOL.PHP_EOL;


	$FILE_SRC = $ON ? $FILE_SP : $FILE_MAIN;
	
	if(copy($FILE_SRC, $FILE_MASTER) == false) echo "$ERROR: Unable to set singleplayer ".($ON ? "on":"off");
	else echo "Success. Single player ".($ON ? "on":"off");
	
	echo PHP_EOL.PHP_EOL;



?>

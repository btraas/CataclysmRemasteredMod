@echo off
Pushd "%~dp0"

move ..\CRMOD_TMP\.git .\
move ..\CRMOD_TMP\dae .\
move ..\CRMOD_TMP\HODOR .\

del config.txt

php setSinglePlayer.php on

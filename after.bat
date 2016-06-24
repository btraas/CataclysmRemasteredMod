@echo off
Pushd "%~dp0"

move ..\CRMOD_TMP\* .\

del config.txt

php setSinglePlayer.php on

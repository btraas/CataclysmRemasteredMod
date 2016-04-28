@echo off
Pushd "%~dp0"

move ..\.git .\

del config.txt

php setSinglePlayer.php on

@echo off
Pushd "%~dp0"

move .git ..\

copy config-CRMOD.txt config.txt

php setSinglePlayer.php off

"C:\Program Files (x86)\Steam\steamapps\common\Homeworld\GBXTools\WorkshopTool\WorkshopTool.exe"

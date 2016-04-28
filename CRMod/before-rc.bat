@echo off
Pushd "%~dp0"

move .git ..\

copy config-RC.txt config.txt

php setSinglePlayer.php on

"C:\Program Files (x86)\Steam\steamapps\common\Homeworld\GBXTools\WorkshopTool\WorkshopTool.exe"

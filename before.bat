@echo off
Pushd "%~dp0"

IF [%1] == [] (
	ECHO version number not specified!
	Exit /b
)


move .git ..\

copy config-CRMOD.txt config.txt

php setSinglePlayer.php off
php setVersion.php %1

"C:\Program Files (x86)\Steam\steamapps\common\Homeworld\GBXTools\WorkshopTool\WorkshopTool.exe"

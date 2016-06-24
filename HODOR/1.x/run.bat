@echo off
Pushd "%~dp0"

IF [%1] == [] (
	ECHO Program not specified!
	Exit /b
)

php convert.php %1

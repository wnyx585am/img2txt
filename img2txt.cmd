@echo off
set imgFile="%~d1%~p1%~n1%~x1"
set txtFile="%~d1%~p1%~n1"
set convertPath="%~d1%~p1"
set batchPath=%~dp0
echo img2txt v0.2.24.0 by David Lucius
rem 21 Feb 2024 09:23 UTC -6:00
echo.
echo Converting %~n1%~x1 to %~n1.txt...
cmd /c "%batchPath%tesseract\tesseract.exe %imgFile% %txtFile%"
echo Conversion complete
timeout 5 >nul
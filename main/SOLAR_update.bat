@echo off
set "TARGET=%~1"
set "SOURCE=%~2"
set "LOG_FILE=%~3"
ping 127.0.0.1 -n 3 >nul
if not exist "%SOURCE%" goto :eof
copy /y "%SOURCE%" "%TARGET%" >nul
del "%SOURCE%" 2>nul
start "" "%TARGET%"

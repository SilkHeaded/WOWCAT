@echo off
:: BETA: THIS VERSION IS IN BETA MEANING BUGS WILL BE PRESENT

:: SETTINGS > EDITING ANYTHING MAY BREAK
set "SOLAR_VER=3.0.0"
set "VERSION_URL=https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/ignore/version.txt"
set "FORM=https://forms.office.com/Pages/ResponsePage.aspx?id=sEuKbhv9NkS8LDHpJyyrQ6Z_qm3l-9dOmHkhDfOrS-xUNUNOVlVKWklJTzNGRkwwN0FNVUREMVNDUy4u"
set "RAW_URL=https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/main/SOLAR.bat"
set "TMP_FILE=%TEMP%\SOLAR_update_%RANDOM%.bat"
set "SELF=%~f0"
set "TMP_VER=%TEMP%\SOLAR_ver_%RANDOM%.txt"
set "UPDATE_PROMPT=1"
set "r=goto re"
set "permclrms=echo This color change is session-only." 
set /a min=1
set /a max=100
set /a range=max-min+1
set /a randomNumber=%RANDOM%%%range + %min%

:: MAY BE CHANGED (just know what you are doin)
set "intro=%USERNAME% on SOLAR v%SOLAR_VER% #-> "
set "colorid=0b"
set "wintitle=SOLAR for Windows 11"
set "writingapp=notepad.exe"
set "modecon=mode 120,40"

:me
cls
color %colorid%
%modecon%
title %wintitle%
SETLOCAL ENABLEDELAYEDEXPANSION

echo       +--------------------------------------------------------------+
echo       I       _________________   ____       _____ __________        I          SOLAR.bat:                                                                 I     %DATE% at %TIME%
echo       I      /   _____/\_____  \ |    |     /  _  \\______   \       I           v%SOLAR_VER%
echo       I      \_____  \  /   |   \|    |    /  /_\  \|       _/       I     %DATE% at %TIME%
echo       I      /        \/    |    \    |___/    |    \    |   \       I
echo       I     /_______  /\_______  /_______ \____|__  /____|___/       I             
echo       I ===========================================================  I
echo       I                    [help] - for info                         I
echo       I                   BUGS MAY BE PRESENT                        I
echo       +--------------------------------------------------------------+
echo.

:re
set "c="
set /p c="%intro%"
if "%c%"=="help" goto help
if "%c%"=="leave" goto exit
if "%c%"=="msg" goto msg
if "%c%"=="countdown" goto command_
if "%c%"=="brhtml" goto browser
if "%c%"=="iamparanoid" goto iamparanoid
if "%c%"=="clear" goto clean
if "%c%"=="ping" goto ping
if "%c%"=="direct" goto dir
if "%c%"=="tasklist" goto tasklist
if "%c%"=="shutdown" goto shutdown
if "%c%"=="windowsdiskcheck" goto chkdsk
if "%c%"=="upd" goto update
if "%c%"=="update" goto update
if "%c%"=="wdc" goto chkdsk
if "%c%"=="systemfilecheck" goto sfc
if "%c%"=="sfc" goto sfc
if "%c%"=="textcolor" goto textcolor
if "%c%"=="onscreenkeyboard" goto osk
if "%c%"=="osk" goto osk
if "%c%"=="calculator" goto calc
if "%c%"=="calc" goto calc
if "%c%"=="coinflip" goto coinflip
if "%c%"=="mag" goto magnify
if "%c%"=="qt" goto quicktime
if "%c%"=="removablestorage" goto removeablestorage
if "%c%"=="saa" goto soundandaudio
if "%c%"=="soundaudio" goto soundandaudio
if "%c%"=="task" goto taskmanager
if "%c%"=="wp" goto wordpad
if "%c%"=="wordpad" goto wordpad
if "%c%"=="pf" goto printersfolder
if "%c%"=="printerfolder" goto printersfolder
if "%c%"=="report" goto report
if "%c%"=="notepad" goto notepad
if "%c%"=="np" goto notepad
if "%c%"=="com" goto commands
if "%c%"=="checkupd" goto checkversion
if "%c%"=="rand" goto coms_
echo ERROR 332: Command failed to be recognized, please use [help] or send feedback [report]
%r%

:command_
if "%msgw%"=echo ERROR 333: Command is valid however not yet programmed, you may become a contributor by [report]

:commands
IF EXIST "com.txt" (
    start "" "com.txt"
    %r%
) ELSE (
echo   ERROR 828: Unable to find "com.txt" so as fallback
echo   ; Going to raw GitHub page...
    start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/main/com.txt"
    %r%
)

:coms_
set "RSTR=%random%"
echo !RSTR:~0,10!
goto coms_

:report
start "" "%FORM%"
echo Thanks for giving feedback^! :]
%r%

:viewtemp
explorer.exe "search-ms:query=%QUERY%&crumb=location:%FOLDER%"
%r%

:browser
set "q="
set /p q=#
if "%q%"=="" (
echo ERROR 001: No Input
pause
%r%
)

echo Fetching raw HTML
curl -L -A "Mozilla/5.0" "%l%" -o "%op%"
if errorlevel 1 (
echo.
echo ERROR 344: HTML unable to download
pause
%r%
)

echo.
echo Raw HTML opening in accessible HTML viewer

start "" "%op%"
echo.
%r%

:iamparanoid
if exist "%~f0" (
start "" notepad.exe "%~f0%"
) else (
echo ERROR 264: Cannot find
)

:clear
cls
%r%

:ping
set /p host=Host or IP:
if "%host%"=="" set host=8.8.8.8
echo Pinging %host%...
ping %host%
echo.
%r%

:tasklist
echo Listing all active tasks...
tasklist
echo.
%r%

:help
color 2
title manual
cls
echo =============================================================================
echo : WHAT ARE WE?
echo SOLAR is a batch file simular to command prompt
echo Created by SilkHeaded and being a small project,
echo thanks for viewing SOLAR
echo =============================================================================
pause
cls
echo =============================================================================
echo : INFO
echo SOLAR is not an actual Windows, MacOS, or Linux software
echo SOLAR is not a virus, you may check the source code with [iamparanoid]
echo SOLAR may read files only for display and not tracking
echo SOLAR is in beta, bugs may occur frequently
echo SOLAR uses MIT license as seen here
echo =============================================================================
pause
cls
echo =============================================================================
echo # VIEW COMMANDS USING [com]
echo =============================================================================
pause
cls
echo =============================================================================
echo : CREDITS
echo Scriptors: SilkHeaded
echo Testers: SilkHeaded, BlackStarMythology (Ari), Stardust, fourf3ced
echo Contributors: You!
echo =============================================================================
echo.
pause
goto me

:shutdown
echo [1] Shutdown now
echo [2] Restart
echo [3] Abort pending shutdown
set /p shopt=Select option:
if "%shopt%"=="1" shutdown /s /t 3
if "%shopt%"=="2" shutdown /r /t 3
if "%shopt%"=="3" shutdown /a
echo.
%r%

:chkdsk
echo Running chkdsk on system drive...
chkdsk C:
echo.
%r%

:sfc
echo Checking system file integrity...
sfc /scannow
echo.
%r%

:textcolor
echo colors:
echo + blue + green + aqua + red
echo + purple + yellow + white + gray
echo + light blue + light green + light aqua
echo + light red + light purple + light yellow
echo + bright white
set /p choice=Enter color:

if "%c%"=="green" (color 2) & %r%
if "%c%"=="blue" (color 1) & %r%
if "%c%"=="red" (color 4) & %r%
if "%c%"=="aqua" (color 3) & %r%
if "%c%"=="purple" (color 5) & %r%
if "%c%"=="yellow" (color 6) & %r%
if "%c%"=="white" (color 7) & %r%
if "%c%"=="gray" (color 8) & %r%
if "%c%"=="light blue" (color 9) & %r%
if "%c%"=="light green" (color A) & %r%
if "%c%"=="light aqua" (color B) & %r%
if "%c%"=="light red" (color C) & %r%
if "%c%"=="light purple" (color D) & %r%
if "%c%"=="light yellow" (color E) & %r%
if "%c%"=="bright white" (color F) & %r%
if "%c%"=="default" (color 0B) & %r%
echo ERROR 236: INVALID COLOR
%r%


:update
echo Downloading update...
curl -L -A "Mozilla/5.0" "%RAW_URL%" -o "%TMP_FILE%"
if errorlevel 1 (
echo ERROR 303: Update failed
del "%TMP_FILE%" 2>nul
%r%
)
echo Replacing on next run...
copy "%TMP_FILE%" "%SELF%" >nul
del "%TMP_FILE%" 2>nul
echo Updated, please restart
goto exit

:checkversion
echo Checking for updates...

curl -L -s -A "Mozilla/5.0" "%VERSION_URL%" -o "%TMP_VER%" >nul 2>&1
if errorlevel 1 (
set /p REMOTE_VER=<"%TMP_VER%"
del "%TMP_VER%" 2>nul
goto :eof
)

del "%TMP_VER%" 2>nul

if "%REMOTE_VER%"=="" goto :eof

if not "%REMOTE_VER%"=="%SOLAR_VER%" (
echo.
echo ^<^< UPDATE AVAILABLE ^>^> %SOLAR_VER% -^> %REMOTE_VER%
echo.
)
goto :eof


for %%A in ("%~f0") do set "OLD_SIZE=%%~zA"
for %%A in ("%TMP_FILE%") do set "NEW_SIZE=%%~zA"

echo [%DATE% %TIME%] OLD_SIZE=%OLD_SIZE% NEW_SIZE=%NEW_SIZE% >> "%LOG_FILE%"

echo Applying update on restart...
echo [%DATE% %TIME%] Spawning helper to replace script >> "%LOG_FILE%"

start "" cmd /c "\"%~dp0SOLAR_update.bat\" \"%~f0\" \"%TMP_FILE%\" \"%LOG_FILE%\""
goto exit

:osk
osk
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
%r%

:calc
calc
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
%r%

:coinflip

if %randomNumber% GEQ 50 (
echo coinflip = heads
) else (
echo coinflip = tails
)
%r%

:taskmanager
taskmgr
%r%

:wordpad
write
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
%r%

:notepad
start notepad
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
%r%

:firewall
firewall.cpl
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
%r%

:magnify
magnify
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
%r%

:util
utilman
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
%r%

:windowssystemsecuritytool
syskey
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
%r%

:soundsandaudio
mmsys.cpl
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
%r%

:removablestorage
ntmsmgr.msc
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
%r%

:quicktime
Quicktime.cpl
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
%r%

:printersfolder
printers
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
%r%

:iamparanoid
if exist "%~f0" (
start "" notepad.exe "%~f0"
) else (
echo ERROR 288: Can't find SOLAR
)
%r%

:msg
set /p msg=MESSAGE #
set /p iptof=IP #
if "%iptof%"=="" (
msg * "%msg%"
) else (
msg %iptof% "%msg%"
)
%r%

:checkversion
set "TMP_VER=%TEMP%\SOLAR_ver_%RANDOM%.txt"
curl -L -s -A "Mozilla/5.0" "%VERSION_URL%" -o "%TMP_VER%" >nul 2>&1
if errorlevel 1 (
del "%TMP_VER%" 2>nul
goto :eof
)
set /p REMOTE_VER=<"%TMP_VER%"
del "%TMP_VER%" 2>nul
if "%REMOTE_VER%"=="" goto :eof
if not "%REMOTE_VER%"=="%SOLAR_VER%" (
color 0E
echo.
echo ^<^< UPDATE AVAILABLE ^>^> !SOLAR_VER! -^> !REMOTE_VER!
echo.
color 0B
)
goto :eof

:exit
exit



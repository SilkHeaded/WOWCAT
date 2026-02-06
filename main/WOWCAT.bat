:: THIS PROGRAM MAY BE DANGEROUS IF NOT USED CORRECTLY

:: This is WOWCAT.bat, a kewl program that isn't a virus

:: DO NOT DELETE {
@echo off
setlocal enabledelayedexpansion 
cls
:: }

:: SETTINGS > EDITING ANYTHING MAY BREAK {
set "%name%_VER=4.5.2"
set "VERSION_URL=https://raw.githubusercontent.com/SilkHeaded/%name%/refs/heads/main/ignore/version.txt"
set "FORM=https://forms.office.com/Pages/ResponsePage.aspx?id=sEuKbhv9NkS8LDHpJyyrQ6Z_qm3l-9dOmHkhDfOrS-xUNUNOVlVKWklJTzNGRkwwN0FNVUREMVNDUy4u"
set "RAW_URL=https://raw.githubusercontent.com/SilkHeaded/%name%/refs/heads/main/main/%name%.bat"
set "TMP_FILE=%TEMP%\%name%_update_%RANDOM%.bat"
set "SELF=%~f0"
set "TMP_VER=%TEMP%\%name%_ver_%RANDOM%.txt"
set "UPDATE_PROMPT=1"
set "permclrms=echo This color change is session-only." 
set "lice=https://raw.githubusercontent.com/SilkHeaded/%name%/refs/heads/main/LICENSE"
set "dis=https://raw.githubusercontent.com/SilkHeaded/%name%/refs/heads/main/DISCLAIMERS.txt"
set "latestversion=curl https://raw.githubusercontent.com/SilkHeaded/%name%/refs/heads/main/ignore/version.txt"
:: }


:: MAY BE CHANGED (ANY LINE SURRONDED BY :: DO NOT CHANGE) {
set "intromes=disguise"
rem regular,retro,disguise 
if /i "%intromes%"=="disguise" goto poep 
set "name=%name%"
set "intro=%USERNAME% #-> "
set "colorid=0b"
set "wintitle=%name% for WIN11 by SilkHeaded"
set "writingapp=notepad.exe"
set "modecon=77,29"
:: }

:: +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:: +++++++++++++++++++++++++++ MAIN SCRIPT +++++++++++++++++++++++++++
:: +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
 
:me
cls
color %colorid%
mode %modecon%
title %wintitle%
cls
if /i "%intromes%"=="regular" (
echo.
echo       +-------------------------------------------------------------+
echo       I        ,d88~~\   ,88~-_   888          e      888~-_        I
echo       I        8888     d888   \  888         d8b     888   \       I 
echo       I        `Y88b   88888   ]  888        /Y88b    888   ]       I 
echo       I         `Y88b, 88888   ]  888       /  Y88b   888   ]       I
echo       I           8888  Y888   /  888      /____Y88b  888_-~        I
echo       I        \__88P'  `88_-~    888____ /      Y88b 888 \_        I
echo       I =========================================================== I
echo       I                  [help] [i] [s] [com]                       I
echo       I                   BUGS MAY BE PRESENT                       I
echo       +-------------------------------------------------------------+
echo.
)

if /i "%intromes%"=="retro" (
echo.
echo       +-------------------------------------------------------------+
echo       I       _________________  _____       _____ __________       I    
echo       I      /   _____/\_      \ \    \     /  _  \\______   \      I     
echo       I      \_____  \  /  /\   \/    /    /  /_\  \/       _/      I  
echo       I      /        \/   \/    \    \___/    \    \    /   \      I
echo       I     /_______  /\_______  /_______ \____/__  /____\___/      I             
echo       I =========================================================== I
echo       I                  [help] [i] [s] [com]                       I
echo       I                   BUGS MAY BE PRESENT                       I
echo       +-------------------------------------------------------------+
echo.
)

:poep
if /i "%intromes%"=="disguise" (
set "colorid=07"
set "wintitle=Command Prompt"
set "mode=80,25"
color %colorid%
mode %modecon%
title %wintitle%
cls
echo Microsoft Windows ^[Version 10.0.22631.6495^]
echo ^(c^) Microsoft Corporation. All rights reserved.
echo.
set "intro=%CD%>"
goto re
)

:re
set "c="
set /p c="%intro%"
if "%c:~0,1%"=="." goto native_cmd
if "%c:~0,1%"==";" goto vi
if /i "%c%"=="help" goto help
if /i "%c%"=="leave" exit
if /i "%c%"=="msg" goto msg
if /i "%c%"=="countdown" goto command_
if /i "%c%"=="brhtml" goto browser
if /i "%c%"=="iamparanoid" goto iamparanoid
if /i "%c%"=="clear" goto clean
if /i "%c%"=="ping" goto ping
if /i "%c%"=="direct" goto dir
if /i "%c%"=="tasklist" goto tasklist
if /i "%c%"=="shutdown" goto shutdown
if /i "%c%"=="windowsdiskcheck" goto chkdsk
if /i "%c%"=="upd" goto update
if /i "%c%"=="update" goto update
if /i "%c%"=="wdc" goto chkdsk
if /i "%c%"=="systemfilecheck" goto sfc
if /i "%c%"=="sfc" goto sfc
if /i "%c%"=="textcolor" goto textcolor
if /i "%c%"=="onscreenkeyboard" goto osk
if /i "%c%"=="osk" goto osk
if /i "%c%"=="calculator" goto calc
if /i "%c%"=="calc" goto calc
if /i "%c%"=="coinflip" goto coinflip
if /i "%c%"=="mag" goto magnify
if /i "%c%"=="qt" goto quicktime
if /i "%c%"=="removablestorage" goto removablestorage
if /i "%c%"=="saa" goto soundsandaudio
if /i "%c%"=="soundaudio" goto soundsandaudio
if /i "%c%"=="task" goto taskmanager
if /i "%c%"=="wp" goto wordpad
if /i "%c%"=="wordpad" goto wordpad
if /i "%c%"=="pf" goto printersfolder
if /i "%c%"=="printerfolder" goto printersfolder
if /i "%c%"=="report" goto report
if /i "%c%"=="notepad" goto notepad
if /i "%c%"=="np" goto notepad
if /i "%c%"=="com" goto commands
if /i "%c%"=="checkupd" goto checkversion
if /i "%c%"=="hack" goto coms_
if /i "%c%"=="%name%" goto %name%
if /i "%c%"=="s" goto %name%
if /i "%c%"=="refresh" goto refresh
if /i "%c%"=="re" goto refresh
if /i "%c%"=="sys" goto sys
if /i "%c%"=="net" goto net
if /i "%c%"=="tools" goto tools
if /i "%c%"=="cls" goto me
if /i "%c%"=="whoami" whoami & goto re
if /i "%c%"=="hostname" hostname & goto re
if /i "%c%"=="wmic" wmic computersystem get model,name,manufacturer,totalphysicalmemory & goto re
if /i "%c%"=="gpupdate" gpupdate /force & goto re
if /i "%c%"=="msconfig" msconfig & goto re
if /i "%c%"=="regedit" regedit & goto re
if /i "%c%"=="firewall" firewall.cpl & goto re
if /i "%c%"=="power" powercfg.cpl & goto re
if /i "%c%"=="users" net user & goto re
if /i "%c%"=="diskpart" diskpart & goto re
if /i "%c%"=="time" goto time
if /i "%c%"=="cmdextversion" goto cmdextversion
if /i "%c%"=="username" goto username
if /i "%c%"=="usernamedirector" goto usernamedirector
if /i "%c%"=="storagedrive" goto storagedrive
if /i "%c%"=="homepath" goto homepath
if /i "%c%"=="os" goto os
if /i "%c%"=="computername" goto computername
if /i "%c%"=="cd" goto cd
if /i "%c%"=="date" goto date
if /i "%c%"=="errorlevel" goto errorlevel
if /i "%c%"=="random" goto random
if /i "%c%"=="path" goto path
if /i "!c:~0,4!"=="make" goto make
if /i "!c:~0,6!"=="whatis" goto vi
if /i "!c:~0,4!"=="find" goto find
if /i "!c:~0,4!"=="open" goto open
if /i "!c:~0,4!"=="show" goto npvsc
echo Invalid input: [ERROR 001] & goto re

:command_
echo Command is valid however not yet integrated, you may become a contributor by [report]
goto re

:commands
IF EXIST "com.txt" (
    start "" "com.txt"
    goto re
) ELSE (
    echo Unable to find "com.txt" so as fallback:
    echo ; Going to raw GitHub page...
    start "" "https://raw.githubusercontent.com/SilkHeaded/%name%/refs/heads/main/main/com.txt"
    goto re
)

:report
start "" "%FORM%"
echo Thanks for giving feedback^^! :]
goto re

:viewtemp
:: requires %QUERY% and %FOLDER% to be set before use
explorer.exe "search-ms:query=%QUERY%&crumb=location:%FOLDER%"
goto re

:browser
set "q="
set /p q=Enter URL:
if "%q%"=="" (
    echo ERROR 001: No Input
    pause
    goto re
)

set "op=%TEMP%\page_%RANDOM%.html"
echo Fetching %q%...
curl -L -A "Mozilla/5.0" "%q%" -o "%op%"
if errorlevel 1 (
    echo ERROR 344: HTML download failed
    pause
    goto re
)

start "" "%op%"
del "%op%" 2>nul
goto re

:iamparanoid
if exist "%~f0" (
    start "" notepad.exe "%~f0"
) else (
    echo ERROR 264: Cannot find
)
goto re

:dir
dir
goto re

:clean
cls
goto me

:refresh
start "" "%SELF%"
exit /b

:ping
set /p host=Host or IP:
if "%host%"=="" set host=8.8.8.8
echo Pinging %host%...
ping %host%
echo.
goto re

:tasklist
echo Listing all active tasks...
tasklist
echo.
goto re

:help
color 2
title manual
cls
echo =============================================================================
echo : WHAT ARE WE?
echo %name% is a batch file similar to command prompt
echo Created by SilkHeaded and being a small project,
echo thanks for viewing %name%
echo =============================================================================
echo.
pause

echo =============================================================================
echo : INFO
echo %name% is not an actual Windows, MacOS, or Linux software
echo %name% is not a virus, you may check the source code with [iamparanoid]
echo %name% may read files only for display and not tracking
echo %name% is in beta, bugs may occur frequently
echo %name% uses MIT license as seen here
echo =============================================================================
echo.
pause

echo =============================================================================
echo : CREDITS
echo Scriptors: SilkHeaded
echo Testers: SilkHeaded, BlackStarMythology (Ari), ANON, ANON
echo Contributors: You!
echo =============================================================================
echo.
pause

echo =============================================================================
echo : PROGRAM INFORMATION / CHEAT SHEET
echo.
echo 1: Windows commands
echo If in the command line you perhaps want to do a command, it should look
echo something like this:
echo.
echo %OS%:
echo    [insert command here]
echo.
echo That is a Windows attempt to do the command, however some %name% commands
echo will override this, if you want to ignore the %name% commands, before
echo attempting to do a command, add a dot like this '.[thisisacommand]'
echo.
pause

echo 2: %name% commands
echo.
echo Normally, the commands will be somewhat normal, having more convinient words and easy to understand code. However, doesn't mean your not gonna get confused.
echo Learn more in [com] to know a bit of the commands, and if you are having trouble, [report] should be correct
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
goto re

:chkdsk
echo Running chkdsk on system drive...
chkdsk C:
echo.
goto re

:sfc
echo Checking system file integrity...
sfc /scannow
echo.
goto re

:textcolor
echo colors:
echo + blue + green + aqua + red
echo + purple + yellow + white + gray
echo + light blue + light green + light aqua
echo + light red + light purple + light yellow
echo + bright white
set /p col=Enter color:

if /i "%col%"=="green" (color 2 & goto re)
if /i "%col%"=="blue" (color 1 & goto re)
if /i "%col%"=="red" (color 4 & goto re)
if /i "%col%"=="aqua" (color 3 & goto re)
if /i "%col%"=="purple" (color 5 & goto re)
if /i "%col%"=="yellow" (color 6 & goto re)
if /i "%col%"=="white" (color 7 & goto re)
if /i "%col%"=="gray" (color 8 & goto re)
if /i "%col%"=="light blue" (color 9 & goto re)
if /i "%col%"=="light green" (color A & goto re)
if /i "%col%"=="light aqua" (color B & goto re)
if /i "%col%"=="light red" (color C & goto re)
if /i "%col%"=="light purple" (color D & goto re)
if /i "%col%"=="light yellow" (color E & goto re)
if /i "%col%"=="bright white" (color F & goto re)
if /i "%col%"=="default" (color 0B & goto re)

echo ERROR 236: INVALID COLOR
goto re

:sys
echo ================== SYSTEM TOOLS ==================
echo 1^) msinfo32 - System Information
echo 2^) dxdiag - DirectX Diagnostic Tool
echo 3^) devmgmt.msc - Device Manager
echo 4^) diskmgmt.msc - Disk Management
echo 5^) eventvwr.msc - Event Viewer
echo 6^) services.msc - Services
echo 7^) appwiz.cpl - Programs and Features
echo 8^) sysdm.cpl - System Properties
echo 9^) control - Control Panel
echo 10^) cleanmgr - Disk Cleanup
echo 11^) resmon - Resource Monitor
echo 12^) taskmgr - Task Manager
echo 13^) mdsched - Memory Diagnostics
echo 14^) ncpa.cpl - Network Connections
echo 15^) winver - Windows Version
echo 0^) Return
set /p opt=#

if "%opt%"=="1" msinfo32 & goto re
if "%opt%"=="2" dxdiag & goto re
if "%opt%"=="3" devmgmt.msc & goto re
if "%opt%"=="4" diskmgmt.msc & goto re
if "%opt%"=="5" eventvwr.msc & goto re
if "%opt%"=="6" services.msc & goto re
if "%opt%"=="7" appwiz.cpl & goto re
if "%opt%"=="8" sysdm.cpl & goto re
if "%opt%"=="9" control & goto re
if "%opt%"=="10" cleanmgr & goto re
if "%opt%"=="11" resmon & goto re
if "%opt%"=="12" taskmgr & goto re
if "%opt%"=="13" mdsched & goto re
if "%opt%"=="14" ncpa.cpl & goto re
if "%opt%"=="15" winver & goto re
goto re

:net
echo ================== NETWORK CMDS ==================
echo 1^) ipconfig /all
echo 2^) ping 8.8.8.8
echo 3^) tracert 8.8.8.8
echo 4^) pathping 8.8.8.8
echo 5^) netstat -ano
echo 6^) nslookup google.com
echo 7^) arp -a
echo 8^) netsh interface ipv4 show config
echo 9^) netsh wlan show profiles
echo 10^) netsh wlan show interfaces
echo 0^) Return
set /p opt=#

if "%opt%"=="1" ipconfig /all & goto re
if "%opt%"=="2" ping 8.8.8.8 & goto re
if "%opt%"=="3" tracert 8.8.8.8 & goto re
if "%opt%"=="4" pathping 8.8.8.8 & goto re
if "%opt%"=="5" netstat -ano & goto re
if "%opt%"=="6" nslookup google.com & goto re
if "%opt%"=="7" arp -a & goto re
if "%opt%"=="8" netsh interface ipv4 show config & goto re
if "%opt%"=="9" netsh wlan show profiles & goto re
if "%opt%"=="10" netsh wlan show interfaces & goto re
goto re

:tools
echo ================== CLI TOOLS ==================
echo 1^) systeminfo
echo 2^) schtasks /query
echo 3^) tasklist
echo 4^) taskkill /im notepad.exe /f
echo 5^) sfc /scannow
echo 6^) chkdsk C:
echo 7^) dism /online /cleanup-image /scanhealth
echo 8^) driverquery
echo 9^) wmic logicaldisk get size,freespace,caption
echo 10^) powercfg /energy
echo 0^) Return
set /p opt=#

if "%opt%"=="1" systeminfo
if "%opt%"=="2" schtasks /query
if "%opt%"=="3" tasklist
if "%opt%"=="4" taskkill /im notepad.exe /f
if "%opt%"=="5" sfc /scannow
if "%opt%"=="6" chkdsk C:
if "%opt%"=="7" dism /online /cleanup-image /scanhealth
if "%opt%"=="8" driverquery
if "%opt%"=="9" wmic logicaldisk get size,freespace,caption
if "%opt%"=="10" powercfg /energy
goto re

:time
echo %time%
goto re

:cmdextversion
echo %CMDEXTVERSION%
goto re

:username
echo %USERNAME%
goto re

:usernamedirector
echo %USERPROFILE%
goto re

:storagedrive
echo %HOMEDRIVE%
goto re

:homepath
echo %HOMEPATH%
goto re

:os
echo %OS%
goto re

:computername
echo %COMPUTERNAME%
goto re

:cd
echo %CD%
goto re

:date
echo %DATE%
goto re

:random
echo %RANDOM%
goto re

:path
echo %PATH%
goto re

:errorlevel
echo %ERRORLEVEL%
goto re

:make
for /f "tokens=1,* delims= " %%a in ("!c!") do (
    if "%%b"=="" (
        echo Doing [make] must require you do insert a file name + extention
        echo EX: [make %name%.bat] will make %name%.bat
    ) else (
        echo.
        echo   FILE CONTENT INSERT HERE
        echo ==============================
        set /p "fileinsides= "
        echo ==============================
        echo.
        echo %fileinsides% > "%%b"
        echo ==============================
        for %%F in ("%%b") do echo %%b / %%~dpF
        echo ==============================
        goto re
    )
)
goto re

:find
for /f "tokens=1,* delims= " %%a in ("!c!") do (
    if "%%b"=="" (
        echo Doing [find] must require you do insert a file name + extention
        echo EX: [find %name%.bat] will find %name%.bat
    ) else (
        echo    PLEASE WAIT...
        where /r %HOMEDRIVE%\ "%%b"
    )
)
goto re

:open
for /f "tokens=1,* delims= " %%a in ("!c!") do (
    if "%%b"=="" (
        echo Doing [open] must require you do insert a file name + extention
        echo EX: [open %name%.bat] will open %name%.bat or even a link
    ) else (
        echo    PLEASE WAIT...
        start "" "%%b"
    )
)
goto re

:npvsc
for /f "tokens=1,* delims= " %%a in ("!c!") do (
    if "%%b"=="" (
        echo Doing [npvsc] must require you do insert a file name + extention
        echo EX: [npvsc %name%.bat] will open %name%.bat in notepad
    ) else (
        echo    PLEASE WAIT...
        start notepad "%%b"
    )
)
goto re

:vi
for /f "tokens=1,2 delims=-" %%a in ("!c!") do (
    rem %%a = "whatis", %%b = key (ver, wa, intro, clr, windowtitle, latest, help)

    if /i "%%b"=="ver" (
        echo %name% VERSION - %%name%_VER%
        goto re
    ) else if /i "%%b"=="wa" (
        echo WRITING APP - %writingapp%
        goto re
    ) else if /i "%%b"=="windowlw" (
        echo MODE CON - %modecon%
        goto re
    ) else if /i "%%b"=="modecon" (
        echo MODE CON - %modecon%
        goto re
    ) else if /i "%%b"=="intro" (
        echo INTRO - %intro%
        goto re
    ) else if /i "%%b"=="clr" (
        echo COLOR - %colorid%
        goto re
    ) else if /i "%%b"=="windowtitle" (
        echo WINDOW TITLE - %wintitle%
        goto re
    ) else if /i "%%b"=="latest" (
        for /f "delims=" %%v in ('
            curl -s "https://raw.githubusercontent.com/SilkHeaded/%name%/refs/heads/main/ignore/version.txt"
        ') do set "latestversion=%%v"
        echo LATEST VERSION - !latestversion!
        goto re
    ) else if /i "%%b"=="help" (
        goto vi_help
    ) else (
        echo Unknown variable [%%b] [ERROR 920]
        goto re
    )
)
goto re
:vi_help
echo [whatis-ver] - find %name% version
echo [whatis-wa] - find writing app
echo [:verlive] - find the latest version
echo [:windowlw] / [:modecon] - find the "mode" of the window AKA w + h
echo [:intro] - "echo" AKA the message for the intro
echo [:clr] - color for the console
echo [:windowtitle] - title for the window
goto re


:native_cmd
set "usercmd=%c:~1%"
echo %OS%:
%usercmd%
goto re


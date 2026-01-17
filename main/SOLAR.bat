:: DO NOT DELETE
@echo off
setlocal enabledelayedexpansion


:: SETTINGS > EDITING ANYTHING MAY BREAK
set "SOLAR_VER=3.0.0"
set "VERSION_URL=https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/ignore/version.txt"
set "FORM=https://forms.office.com/Pages/ResponsePage.aspx?id=sEuKbhv9NkS8LDHpJyyrQ6Z_qm3l-9dOmHkhDfOrS-xUNUNOVlVKWklJTzNGRkwwN0FNVUREMVNDUy4u"
set "RAW_URL=https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/main/SOLAR.bat"
set "TMP_FILE=%TEMP%\SOLAR_update_%RANDOM%.bat"
set "SELF=%~f0"
set "TMP_VER=%TEMP%\SOLAR_ver_%RANDOM%.txt"
set "UPDATE_PROMPT=1"
set "permclrms=echo This color change is session-only." 
set "lice=https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/LICENSE"
set "dis=https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/DISCLAIMERS.txt"

:: MAY BE CHANGED (just know what you are doin)
set "intro=%USERNAME% on SOLAR v%SOLAR_VER% #-> "
set "colorid=0b"
set "wintitle=SOLAR for Windows 11"
set "writingapp=notepad.exe"
set "modecon=mode 120,40"
:: SET THIS TO 0 IF YOU WANT TO IGNORE LINE 25
set "warningmes=1"
:: SET THIS TO 0 IF YOU DO NOT WANT THE SOLAR LOGO UP
:: OR YOU CAN BROWSE THE OPTIONS
set "intromes=3"
if "%warningmes%"=="1" (
color 0C
cls
msg * /w WARNING: This app may endanger your computer if not used properly ; by clicking ahead, you have agreed to use the app considering possibilities
msg * /w YOU HAVE BEEN WARNED
echo ---------------------------------------------------------------------
goto me
)

:me
cls
color %colorid%
%modecon%
title %wintitle%
cls
if "%intromes%"=="1" (
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

if "%intromes%"=="2" (
echo.
echo       +-------------------------------------------------------------+
echo       I       $$$$$$\   $$$$$$\  $$\        $$$$$$\  $$$$$$$\       I
echo       I      $$  __$$\ $$  __$$\ $$ 8      $$  __$$\ $$  __$$\      I
echo       I      $$ /  \_8 $$ /  $$ ($$ 8      $$ /  $$ 8$$ 8  $$ 8     I
echo       I      \$$$$$$\  $$ 8  $$ ($$ 8      $$$$$$$$ 8$$$$$$$  /     I
echo       I       \____$$\ $$ 8  $$ ($$ 8      $$  __$$ 8$$  __$$<      I
echo       I      $$\   $$ 8$$ 8  $$ ($$ 8      $$ 8  $$ 8$$ 8  $$ 8     I
echo       I      \$$$$$$  8 $$$$$$  |$$$$$$$$\ $$ 8  $$ 8$$ 8  $$ 8     I
echo       I       \______/  \______/ \________|\__8  \__8\__8  \__8     I
echo       I =========================================================== I
echo       I                  [help] [i] [s] [com]                       I
echo       I                   BUGS MAY BE PRESENT                       I
echo       +-------------------------------------------------------------+
echo.
)

if "%intromes%"=="3" (
echo.
echo       +-------------------------------------------------------------+
echo       I       _________________  _____       _____ __________       I    
echo       I      /   _____/\_      \ \    \     /  _  \\______   \      I     
echo       I      \_____  \  /  /\   \/    /    /  /_\  \/       _/      I  
echo       I      /        \/   \/    \    \___/    \    \    /   \      I
echo       I     /_______  /\_______  /_______ \____/__  /____\___/      I             
echo       I =========================================================== I
echo       I                    [help] - for info                        I
echo       I                   BUGS MAY BE PRESENT                       I
echo       +-------------------------------------------------------------+
echo.
)
:re
set "c="
set /p c="%intro%"
if /i "%c%"=="help" goto help
if /i "%c%"=="leave" goto exit
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
if /i "%c%"=="info" goto info
if /i "%c%"=="i" goto info
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
if /i "%c%"=="solar" goto solar
if /i "%c%"=="s" goto solar
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

%c%
if errorlevel 1 (
echo   ============ \ SOLAR / ============
echo ERROR 001: Incorrect command: "%c%"
)
goto re

echo ERROR 332: Command failed to be recognized, please use [help] or send feedback [report]
goto re

:command_
echo ERROR 333: Command is valid however not yet programmed, you may become a contributor by [report]
goto re

:commands
IF EXIST "com.txt" (
    start "" "com.txt"
    goto re
) ELSE (
echo   ERROR 828: Unable to find "com.txt" so as fallback
echo   ; Going to raw GitHub page...
    start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/main/com.txt"
    goto re
)

:coms_
echo %random%
color 0C
goto coms_

:report
start "" "%FORM%"
echo Thanks for giving feedback^! :]
goto re

:viewtemp
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
start "" notepad.exe "%~f0%"
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
start "" "SOLAR.bat"
exit

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

if "%col%"=="green" (color 2) & goto re
if "%col%"=="blue" (color 1) & goto re
if "%col%"=="red" (color 4) & goto re
if "%col%"=="aqua" (color 3) & goto re
if "%col%"=="purple" (color 5) & goto re
if "%col%"=="yellow" (color 6) & goto re
if "%col%"=="white" (color 7) & goto re
if "%col%"=="gray" (color 8) & goto re
if "%col%"=="light blue" (color 9) & goto re
if "%col%"=="light green" (color A) & goto re
if "%col%"=="light aqua" (color B) & goto re
if "%col%"=="light red" (color C) & goto re
if "%col%"=="light purple" (color D) & goto re
if "%col%"=="light yellow" (color E) & goto re
if "%col%"=="bright white" (color F) & goto re
if "%col%"=="default" (color 0B) & goto re
echo ERROR 236: INVALID COLOR
goto re

:sys
echo 1^) devmgmt.msc  - Device Manager
echo 2^) diskmgmt.msc - Disk Management
echo 3^) services.msc - Services
echo 4^) eventvwr.msc - Event Viewer
echo 5^) sysdm.cpl    - System Properties
set /p opt=;
if "%opt%"=="1" devmgmt.msc
if "%opt%"=="2" diskmgmt.msc
if "%opt%"=="3" services.msc
if "%opt%"=="4" eventvwr.msc
if "%opt%"=="5" sysdm.cpl
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

:osk
osk
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:calc
calc
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:coinflip
set /a num=%random% %% 2
if %num%==0 (echo Heads) else (echo Tails)
goto re

:taskmanager
taskmgr
goto re

:wordpad
write
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:notepad
start notepad
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:firewall
firewall.cpl
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:magnify
magnify
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:util
utilman
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:windowssystemsecuritytool
syskey
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:soundsandaudio
mmsys.cpl
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:removablestorage
ntmsmgr.msc
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:quicktime
Quicktime.cpl
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:printersfolder
printers
echo [IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]
goto re

:msg
echo.
echo Message / Input ^(
set /p msg= 
echo ^)
echo -----------------------
echo IP Address / Output ^(
set /p iptof= 
echo ^)
echo.
if "%iptof%"=="" (
msg * "%msg%"
) else (
msg %iptof% "%msg%"
)
goto re

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

:info
set /p in=; 
if "%in%"=="ver" echo SOLAR.bat v%SOLAR_VER% & goto re
if "%in%"=="license" start "" "%lice%" & goto re
if "%in%"=="disclaimer" start "" "%dis%" & goto re
if "%in%"=="return" goto re
echo ver ; license ; disclaimer ; return:
goto info


:solar
set /p sol=; 
if "%sol%"=="needed" goto solarneeded
if "%sol%"=="other" goto solarother
if "%sol%"=="read" goto solarread
if "%sol%"=="all" goto solarall
echo needed ; other ; read ; all
goto solar

:solarall
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/main/com.txt" 
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/LICENSE"
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/DISCLAIMERS.txt"
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/main/SOLAR.bat"
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/main/SOLAR_update.bat"
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/main/com.txt"
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/ignore/version.txt"
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/help/README.md"
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/help/manual.txt"
goto re

:solarread
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/DISCLAIMERS.txt"
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/help/manual.txt"
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/main/com.txt"
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/help/README.md"
goto re

:solarneeded
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/main/SOLAR_update.bat"
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/main/SOLAR.bat"
goto re

:solarother
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/DISCLAIMERS.txt"
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/ignore/version.txt"
start "" "https://raw.githubusercontent.com/SilkHeaded/SOLAR/refs/heads/main/LICENSE"
goto re

:sys
echo ================== SYSTEM TOOLS ==================
echo 1^) msinfo32      - System Information
echo 2^) dxdiag        - DirectX Diagnostic Tool
echo 3^) devmgmt.msc   - Device Manager
echo 4^) diskmgmt.msc  - Disk Management
echo 5^) eventvwr.msc  - Event Viewer
echo 6^) services.msc  - Services
echo 7^) appwiz.cpl    - Programs and Features
echo 8^) sysdm.cpl     - System Properties
echo 9^) control       - Control Panel
echo 10^) cleanmgr     - Disk Cleanup
echo 11^) resmon       - Resource Monitor
echo 12^) taskmgr      - Task Manager
echo 13^) mdsched      - Memory Diagnostics
echo 14^) ncpa.cpl     - Network Connections
echo 15^) winver       - Windows Version
echo 0^) Return
set /p opt=# 
if "%opt%"=="1"  msinfo32 & goto re
if "%opt%"=="2"  dxdiag & goto re
if "%opt%"=="3"  devmgmt.msc & goto re
if "%opt%"=="4"  diskmgmt.msc & goto re
if "%opt%"=="5"  eventvwr.msc & goto re
if "%opt%"=="6"  services.msc & goto re
if "%opt%"=="7"  appwiz.cpl & goto re
if "%opt%"=="8"  sysdm.cpl & goto re
if "%opt%"=="9"  control & goto re
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
if "%opt%"=="1"  ipconfig /all & goto re
if "%opt%"=="2"  ping 8.8.8.8 & goto re
if "%opt%"=="3"  tracert 8.8.8.8 & goto re
if "%opt%"=="4"  pathping 8.8.8.8 & goto re
if "%opt%"=="5"  netstat -ano & goto re
if "%opt%"=="6"  nslookup google.com & goto re
if "%opt%"=="7"  arp -a & goto re
if "%opt%"=="8"  netsh interface ipv4 show config & goto re
if "%opt%"=="9"  netsh wlan show profiles & goto re
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
if "%opt%"=="1"  systeminfo
if "%opt%"=="2"  schtasks /query
if "%opt%"=="3"  tasklist
if "%opt%"=="4"  taskkill /im notepad.exe /f
if "%opt%"=="5"  sfc /scannow
if "%opt%"=="6"  chkdsk C:
if "%opt%"=="7"  dism /online /cleanup-image /scanhealth
if "%opt%"=="8"  driverquery
if "%opt%"=="9"  wmic logicaldisk get size,freespace,caption
if "%opt%"=="10" powercfg /energy
goto re

:exit
exit


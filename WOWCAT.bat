:: BETA: THIS VERSION IS IN BETA MEANING BUGS WILL BE PRESENT, SEND FEEDBACK HERE:
:me
@echo off
color 0b
mode con: cols=80 lines=30
setlocal enabledelayedexpansion
title WOWCAT for Windows 11

:: SETTINGS DO NOT EDIT
set "WOWCAT_VER=2.2.5"
set "VERSION_URL=https://raw.githubusercontent.com/SilkHeaded/WOWCAT/refs/heads/main/version.txt"
set "FORM=https://forms.cloud.microsoft/r/JZecx1MBtJ"
set "l=https://duckduckgo.com/html/?q=%q%"
set "q=%q: =+%"
set "last_op=%op%"
set "op=%TEMP%\LMAOWOWCAT2913%RANDOM%HTML_temp%RANDOM%.html"
set "RAW_URL=https://raw.githubusercontent.com/SilkHeaded/WOWCAT/main/WOWCAT.bat"
set "TMP_FILE=%TEMP%\WOWCAT_update_%RANDOM%.bat"
set "SELF=%~f0"
set "TMP_VER=%TEMP%\WOWCAT_ver_%RANDOM%.txt"
set "UPDATE_PROMPT=1"
set /a min=1
set /a max=100
set /a range=max-min+1
set /a randomNumber=%RANDOM%%%range + %min%

:: LANGUAGE SYSTEM
set "LANG=en"

:: SETTINGS CAN BE EDITED
set "

cls
echo.
echo           ..     ..  .......  ..     ..  ......   .......  .......
echo           ..     ..  ..   ..  ..     ..  ..       ..   ..     ..
echo           ..  .  ..  ..   ..  ..  .  ..  ..       .......     ..
echo           .. . . ..  ..   ..  .. . . ..  ..       ..   ..     ..
echo           ...   ...  .......  ...   ...  ......   ..   ..     ..
echo         ===========================================================
echo                            [help] - for info
echo                           BUGS MAY BE PRESENT
echo		 _________________________________________________________
echo.

:: Language selector on first run
goto lang_menu

:lang_menu
cls
if /i "%LANG%"=="en" (
    echo ====================================================
    echo Select language / Change language
    echo [1] English (current)
    echo [2] Español
    echo [3] 日本語
    echo [4] Back to main
    set "LANG_PROMPT=Choose / Cambiar / 選択: "
) else if /i "%LANG%"=="es" (
    echo ====================================================
    echo Seleccione idioma / Cambiar idioma
    echo [1] English
    echo [2] Español (actual)
    echo [3] 日本語
    echo [4] Volver al menú principal
    set "LANG_PROMPT=Elija / 選択: "
) else (
    echo ====================================================
    echo 言語を選択 / 言語を変更
    echo [1] English
    echo [2] Español
    echo [3] 日本語 (現在)
    echo [4] メインメニューに戻る
    set "LANG_PROMPT=選択 / Choose: "
)
echo.
set /p langChoice="%LANG_PROMPT%"
if "%langChoice%"=="1" set "LANG=en" & goto load_lang
if "%langChoice%"=="2" set "LANG=es" & goto load_lang
if "%langChoice%"=="3" set "LANG=jp" & goto load_lang
if "%langChoice%"=="4" goto re
goto lang_menu

:load_lang
if /i "%LANG%"=="en" goto lang_en
if /i "%LANG%"=="es" goto lang_es
if /i "%LANG%"=="jp" goto lang_jp
goto lang_en

:lang_en
set "STR_PROMPT=%username% on v%WOWCAT_VER% / "
set "STR_ERR_UNKNOWN=ERROR 332: Command failed to be recognized, please use [help] or send feedback [report]"
set "STR_ERR_NOPARAM=ERROR 001: No Input"
set "STR_HELP_TITLE=: WHAT ARE WE?"
set "STR_HELP_WOWCAT=WOWCAT is a batch file similar to command prompt"
set "STR_HELP_INFO=: INFO"
set "STR_INFO1=WOWCAT is not an actual Windows, MacOS, or Linux software"
set "STR_INFO2=WOWCAT is not a virus, you may check the source code with [iamparanoid]"
set "STR_INFO3=WOWCAT may read files only for display and not tracking"
set "STR_INFO4=WOWCAT is in beta, bugs may occur frequently"
set "STR_INFO5=WOWCAT uses MIT license"
set "STR_COMMANDS=# VIEW COMMANDS USING [com]"
set "STR_CREDITS=: CREDITS"
set "STR_SCRIPTS=Scriptors: SilkHeaded"
set "STR_TESTERS=Testers: SilkHeaded, BlackStarMythology (Ari), Stardust, fourf3ced"
set "STR_CONTRIB=Contributors: You!"
set "STR_PING=Enter host or IP to ping:"
set "STR_TASKLIST=Listing all active tasks..."
set "STR_SHUTDOWN=[1] Shutdown now [2] Restart [3] Abort pending shutdown"
set "STR_SHOPT=Select option:"
set "STR_BROWSER=Fetching raw HTML"
set "STR_BROWSER_ERR=ERROR 344: HTML unable to download"
set "STR_BROWSER_OPEN=Raw HTML opening in accessible HTML viewer"
set "STR_COLORS=colors:"
set "STR_COLOR_LIST=    + blue      + green     + aqua      + red"
set "STR_COLOR_LIST2=    + purple    + yellow    + white     + gray"
set "STR_COLOR_LIST3=    + light blue + light green + light aqua"
set "STR_COLOR_LIST4=    + light red + light purple + light yellow"
set "STR_COLOR_LIST5=    + bright white"
set "STR_COLOR_ENTER=Enter color:"
set "STR_COLOR_ERR=ERROR 236: INVALID COLOR"
set "STR_UPDATE=Downloading update..."
set "STR_UPDATE_ERR=ERROR 303: Update failed"
set "STR_UPDATE_RESTART=Updated, please restart"
set "STR_MSG=MESSAGE #"
set "STR_IP=IP #"
set "STR_COINFLIP=coinflip ="
set "STR_APP_MISSING=[IF IT DID NOT OPEN, YOU MAY BE MISSING THE APP]"
set "STR_FEEDBACK=Thanks for giving feedback! :]"
goto lang_end

:lang_es
set "STR_PROMPT=%username% en v%WOWCAT_VER% / "
set "STR_ERR_UNKNOWN=ERROR 332: Comando no reconocido, use [help] o envie comentarios [report]"
set "STR_ERR_NOPARAM=ERROR 001: Sin entrada"
set "STR_HELP_TITLE=: ¿QUÉ SOMOS?"
set "STR_HELP_WOWCAT=WOWCAT es un archivo batch similar al prompt de comandos"
set "STR_HELP_INFO=: INFO"
set "STR_INFO1=WOWCAT no es software real de Windows, MacOS o Linux"
set "STR_INFO2=WOWCAT no es un virus, revise el código fuente con [iamparanoid]"
set "STR_INFO3=WOWCAT solo lee archivos para mostrar, no rastrea"
set "STR_INFO4=WOWCAT está en beta, pueden ocurrir errores"
set "STR_INFO5=WOWCAT usa licencia MIT"
set "STR_COMMANDS=# VER COMANDOS USANDO [com]"
set "STR_CREDITS=: CRÉDITOS"
set "STR_SCRIPTS=Creadores: SilkHeaded"
set "STR_TESTERS=Testers: SilkHeaded, BlackStarMythology (Ari), Stardust, fourf3ced"
set "STR_CONTRIB=Contribuidores: ¡Tú!"
set "STR_PING=Ingrese host o IP para hacer ping:"
set "STR_TASKLIST=Listando todas las tareas activas..."
set "STR_SHUTDOWN=[1] Apagar ahora [2] Reiniciar [3] Cancelar apagado pendiente"
set "STR_SHOPT=Seleccione opción:"
set "STR_BROWSER=Obteniendo HTML crudo"
set "STR_BROWSER_ERR=ERROR 344: No se pudo descargar HTML"
set "STR_BROWSER_OPEN=HTML crudo abriéndose en visor accesible"
set "STR_COLORS=Colores disponibles:"
set "STR_COLOR_LIST=    + azul      + verde     + aguamarina + rojo"
set "STR_COLOR_LIST2=    + púrpura   + amarillo  + blanco     + gris"
set "STR_COLOR_LIST3=    + azul claro + verde claro + aguamarina clara"
set "STR_COLOR_LIST4=    + rojo claro + púrpura claro + amarillo claro"
set "STR_COLOR_LIST5=    + blanco brillante"
set "STR_COLOR_ENTER=Ingrese color:"
set "STR_COLOR_ERR=ERROR 236: COLOR INVÁLIDO"
set "STR_UPDATE=Descargando actualización..."
set "STR_UPDATE_ERR=ERROR 303: Actualización falló"
set "STR_UPDATE_RESTART=Actualizado, por favor reinicie"
set "STR_MSG=MENSAJE #"
set "STR_IP=IP #"
set "STR_COINFLIP=moneda ="
set "STR_APP_MISSING=[SI NO SE ABRIÓ, FALTA LA APLICACIÓN]"
set "STR_FEEDBACK=¡Gracias por sus comentarios! :]"
goto lang_end

:lang_jp
set "STR_PROMPT=%username% v%WOWCAT_VER% / "
set "STR_ERR_UNKNOWN=ERROR 332: コマンドが認識されません。[help] を使うか [report] でフィードバックを送ってください"
set "STR_ERR_NOPARAM=ERROR 001: 入力がありません"
set "STR_HELP_TITLE=: 私たちは何？"
set "STR_HELP_WOWCAT=WOWCATはコマンドプロンプトに似たバッチファイルです"
set "STR_HELP_INFO=: 情報"
set "STR_INFO1=WOWCATはWindows、MacOS、Linuxの実際のソフトウェアではありません"
set "STR_INFO2=WOWCATはウイルスではありません。[iamparanoid]でソースコードを確認できます"
set "STR_INFO3=WOWCATは表示目的でのみファイルを読んで追跡しません"
set "STR_INFO4=WOWCATはベータ版で、エラーが頻発する可能性があります"
set "STR_INFO5=WOWCATはMITライセンスを使用しています"
set "STR_COMMANDS=# [com] でコマンドを表示"
set "STR_CREDITS=: クレジット"
set "STR_SCRIPTS=スクリプター: SilkHeaded"
set "STR_TESTERS=テスター: SilkHeaded, BlackStarMythology (Ari), Stardust, fourf3ced"
set "STR_CONTRIB=コントリビューター: あなた！"
set "STR_PING=PingするホストまたはIPを入力:"
set "STR_TASKLIST=すべてのアクティブタスクをリスト表示..."
set "STR_SHUTDOWN=[1] 今すぐシャットダウン [2] 再起動 [3] 保留中のシャットダウンを中止"
set "STR_SHOPT=オプションを選択:"
set "STR_BROWSER=生HTMLを取得中"
set "STR_BROWSER_ERR=ERROR 344: HTMLをダウンロードできません"
set "STR_BROWSER_OPEN=アクセス可能なHTMLビューアで生HTMLを開きます"
set "STR_COLORS=利用可能な色:"
set "STR_COLOR_LIST=    + 青       + 緑      + 水色     + 赤"
set "STR_COLOR_LIST2=    + 紫       + 黄      + 白       + 灰"
set "STR_COLOR_LIST3=    + 水色薄    + 緑薄    + 水色薄"
set "STR_COLOR_LIST4=    + 赤薄     + 紫薄    + 黄薄"
set "STR_COLOR_LIST5=    + 白輝"
set "STR_COLOR_ENTER=色を入力:"
set "STR_COLOR_ERR=ERROR 236: 無効な色"
set "STR_UPDATE=更新をダウンロード中..."
set "STR_UPDATE_ERR=ERROR 303: 更新に失敗"
set "STR_UPDATE_RESTART=更新完了、再起動してください"
set "STR_MSG=メッセージ #"
set "STR_IP=IP #"
set "STR_COINFLIP=コイン ="
set "STR_APP_MISSING=[開かなかった場合、アプリが不足しています]"
set "STR_FEEDBACK=フィードバックありがとう！ :]"
goto lang_end

:lang_end
goto re

:re
set /p choice="%STR_PROMPT%"
if "%choice%"=="help" goto help
if "%choice%"=="leave" goto exit 
if "%choice%"=="message" goto msg
if "%choice%"=="enablewarning" set "msgw=1"
if "%choice%"=="disablewarning" set "msgw="
if "%choice%"=="countdown" goto command_
if "%choice%"=="brhtml" goto browser
if "%choice%"=="iamparanoid" goto iamparanoid
if "%choice%"=="clear" goto clean
if "%choice%"=="ping" goto ping
if "%choice%"=="direct" goto dir
if "%choice%"=="tasklist" goto tasklist
if "%choice%"=="shutdown" goto shutdown
if "%choice%"=="windowsdiskcheck" goto chkdsk
if "%choice%"=="upd" goto update
if "%choice%"=="update" goto update
if "%choice%"=="wdc" goto chkdsk
if "%choice%"=="systemfilecheck" goto sfc
if "%choice%"=="sfc" goto sfc
if "%choice%"=="textcolor" goto textcolor
if "%choice%"=="onscreenkeyboard" goto osk
if "%choice%"=="osk" goto osk
if "%choice%"=="calculator" goto calc
if "%choice%"=="calc" goto calc
if "%choice%"=="coinflip" goto coinflip
if "%choice%"=="mag" goto magnify
if "%choice%"=="qt" goto quicktime
if "%choice%"=="removablestorage" goto removeablestorage
if "%choice%"=="saa" goto soundandaudio
if "%choice%"=="soundaudio" goto soundandaudio
if "%choice%"=="task" goto taskmanager
if "%choice%"=="wp" goto wordpad
if "%choice%"=="wordpad" goto wordpad
if "%choice%"=="pf" goto printersfolder
if "%choice%"=="printerfolder" goto printersfolder
if "%choice%"=="report" goto report
if "%choice%"=="notepad" goto notepad
if "%choice%"=="np" goto notepad
if "%choice%"=="com" goto commands
if "%choice%"=="checkupd" goto checkversion
if "%choice%"=="hack" goto coms_
if "%choice%"=="language" goto lang_menu
if "%choice%"=="lang" goto lang_menu
echo %STR_ERR_UNKNOWN%
goto re

:command_
echo ERROR 333: Command is valid however not yet programmed, you may become a contributor by [report]

:commands
start "" "com.txt"
goto re

:coms_
echo %RANDOM%
goto coms_

:report
start "" "%FORM%"
echo %STR_FEEDBACK%
goto re

:viewtemp
explorer.exe "search-ms:query=%QUERY%&crumb=location:%FOLDER%"
goto re

:browser
set "q="
set /p q=# 
if "%q%"=="" (
    echo %STR_ERR_NOPARAM%
    pause
    goto re
)

echo %STR_BROWSER%
curl -L -A "Mozilla/5.0" "%l%" -o "%op%"
if errorlevel 1 (
    echo.
    echo %STR_BROWSER_ERR%
    pause
    goto re
)

echo.
echo %STR_BROWSER_OPEN%

start "" "%op%"
echo.
goto re

:iamparanoid
if exist "%~f0" (
    start "" notepad.exe "%~f0%"
) else (
    echo ERROR 264: Cannot find
)

:clear
cls
goto re

:ping
set /p host=%STR_PING% 
if "%host%"=="" set host=8.8.8.8
echo Pinging %host%...
ping %host%
echo.
goto re

:tasklist
echo %STR_TASKLIST%
tasklist
echo.
goto re

:help
color 2
title manual
cls
echo =============================================================================
echo %STR_HELP_TITLE%
echo %STR_HELP_WOWCAT%
echo Created by SilkHeaded and being a small project,
echo thanks for viewing WOWCAT
echo =============================================================================
pause
cls
echo =============================================================================
echo %STR_HELP_INFO%
echo %STR_INFO1%
echo %STR_INFO2%
echo %STR_INFO3%
echo %STR_INFO4%
echo %STR_INFO5%
echo =============================================================================
pause
cls
echo =============================================================================
echo %STR_COMMANDS%
echo =============================================================================
pause
cls
echo =============================================================================
echo %STR_CREDITS%
echo %STR_SCRIPTS%
echo %STR_TESTERS%
echo %STR_CONTRIB%
echo =============================================================================
echo.
pause
goto re

:shutdown
echo %STR_SHUTDOWN%
set /p shopt=%STR_SHOPT% 
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
echo %STR_COLORS%
echo %STR_COLOR_LIST%
echo %STR_COLOR_LIST2%
echo %STR_COLOR_LIST3%
echo %STR_COLOR_LIST4%
echo %STR_COLOR_LIST5%
set /p choice=%STR_COLOR_ENTER% 

if "%choice%"=="green" (color 2) & goto re
if "%choice%"=="blue" (color 1) & goto re
if "%choice%"=="red" (color 4) & goto re
if "%choice%"=="aqua" (color 3) & goto re
if "%choice%"=="purple" (color 5) & goto re
if "%choice%"=="yellow" (color 6) & goto re
if "%choice%"=="white" (color 7) & goto re
if "%choice%"=="gray" (color 8) & goto re
if "%choice%"=="light blue" (color 9) & goto re
if "%choice%"=="light green" (color A) & goto re
if "%choice%"=="light aqua" (color B) & goto re
if "%choice%"=="light red" (color C) & goto re
if "%choice%"=="light purple" (color D) & goto re
if "%choice%"=="light yellow" (color E) & goto re
if "%choice%"=="bright white" (color F) & goto re
if "%choice%"=="default" (color 0B) & goto re
echo %STR_COLOR_ERR%
goto re

:update
echo %STR_UPDATE%
curl -L -A "Mozilla/5.0" "%RAW_URL%" -o "%TMP_FILE%"
if errorlevel 1 (
    echo %STR_UPDATE_ERR%
    del "%TMP_FILE%" 2>nul
    goto re
)
echo Replacing on next run...
copy "%TMP_FILE%" "%SELF%" >nul
del "%TMP_FILE%" 2>nul
echo %STR_UPDATE_RESTART%
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

if not "%REMOTE_VER%"=="%WOWCAT_VER%" (
    echo.
    echo    ^<^< UPDATE AVAILABLE ^>^>  %WOWCAT_VER% -^> %REMOTE_VER%
    echo.
)
goto :eof

:osk
osk
echo %STR_APP_MISSING%
goto re

:calc
calc
echo %STR_APP_MISSING%
goto re

:coinflip
if %randomNumber% GEQ 50 (
    echo %STR_COINFLIP% heads
) else (
    echo %STR_COINFLIP% tails
)
goto re

:taskmanager
taskmgr
goto re

:wordpad
write
echo %STR_APP_MISSING%
goto re

:notepad
start notepad
echo %STR_APP_MISSING%
goto re

:firewall
firewall.cpl
echo %STR_APP_MISSING%
goto re

:magnify
magnify
echo %STR_APP_MISSING%
goto re

:util
utilman
echo %STR_APP_MISSING%
goto re

:windowssystemsecuritytool
syskey
echo %STR_APP_MISSING%
goto re

:soundsandaudio
mmsys.cpl
echo %STR_APP_MISSING%
goto re

:removablestorage
ntmsmgr.msc
echo %STR_APP_MISSING%
goto re

:quicktime
Quicktime.cpl
echo %STR_APP_MISSING%
goto re

:printersfolder
printers
echo %STR_APP_MISSING%
goto re

:msg
set /p msg=%STR_MSG% 
set /p iptof=%STR_IP% 
if "%iptof%"=="" (
    msg * "%msg%"
) else (
    msg %iptof% "%msg%"
)
goto re

:exit
exit

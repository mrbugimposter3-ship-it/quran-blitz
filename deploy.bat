@echo off
REM ============================================================
REM  QURAN BLITZ - one-click deploy
REM  Double-click this file after editing index.html.
REM  It commits your changes and pushes them to GitHub.
REM  GitHub Pages auto-rebuilds ~1 minute later. Done!
REM ============================================================
cd /d "%~dp0"
set GIT="C:\Program Files\Git\cmd\git.exe"

echo.
echo  === QURAN BLITZ DEPLOY ===
echo.

set /p MSG="Commit message (press Enter for 'Update app'): "
if "%MSG%"=="" set MSG=Update app

%GIT% add .
%GIT% commit -m "%MSG%"
%GIT% push

echo.
if %ERRORLEVEL%==0 (
  echo  [OK] Pushed! Live site updates in ~1 min:
  echo  https://mrbugimposter3-ship-it.github.io/quran-blitz/
) else (
  echo  [!] Something went wrong - read the messages above.
)
echo.
pause

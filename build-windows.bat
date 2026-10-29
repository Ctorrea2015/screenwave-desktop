@echo off
title Build Screenwave Windows Installer
echo.
echo Screenwave Entertainment Hub - Windows installer builder
echo This requires Node.js and an internet connection for dependencies.
echo.
call npm install
if errorlevel 1 (
  echo.
  echo npm install failed. Check that Node.js is installed and try again.
  pause
  exit /b 1
)
call npm run dist
if errorlevel 1 (
  echo.
  echo Installer build failed. Read the error above.
  pause
  exit /b 1
)
echo.
echo Finished. Look inside the dist folder for Screenwave-Setup-1.0.0.exe
pause

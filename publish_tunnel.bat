@echo off
title TOTO AI MASTER - Public URL Generator
color 0A
echo ====================================================
echo   TOTO AI MASTER - Publish to Internet
echo   Creates a FREE public URL for your website
echo ====================================================
echo.

REM Check if server is running
echo [1/3] Checking if server is running on port 5000...
netstat -ano | findstr ":5000" >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo WARNING: Server is NOT running!
    echo Please run start.bat first in another window.
    echo.
    pause
    exit /b 1
)
echo       Server is RUNNING on port 5000. Good!
echo.

echo [2/3] Creating public tunnel URL...
echo       This may take 10-20 seconds...
echo.
echo ====================================================
echo   IMPORTANT: When the URL appears below, share it!
echo   Anyone can access your website with that URL.
echo   The URL changes each time you run this script.
echo ====================================================
echo.

npx --yes localtunnel --port 5000 --subdomain toto-ai-master

echo.
echo ====================================================
echo   Tunnel closed. Run this script again to get new URL.
echo ====================================================
pause

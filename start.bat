@echo off
title TOTO AI MASTER - Singapore TOTO & 4D Analysis Platform
color 09
echo ====================================================
echo   TOTO AI MASTER - Singapore Pools AI Platform
echo   Version 2.0 - Dark Navy Gold Edition
echo ====================================================
echo.

REM Kill any existing process on port 5000
echo [0/3] Clearing port 5000...
for /f "tokens=5" %%a in ('netstat -aon ^| findstr ":5000 "') do (
    taskkill /PID %%a /F >nul 2>&1
)
timeout /t 1 /nobreak >nul

echo [1/3] Verifying environment...
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Node.js not found. Please install from https://nodejs.org
    pause
    exit /b 1
)
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Python not found. Please install from https://python.org
    pause
    exit /b 1
)

echo [2/3] Starting TOTO AI MASTER Server...
echo.
echo ====================================================
echo   SERVER URL:    http://localhost:5000
echo   ADMIN LOGIN:   sgtamil099@.com
echo   PASSWORD:      Harisg098@
echo   BACKUP ADMIN:  admin@totoai.sg / AdminPassword123!
echo ====================================================
echo.
echo [3/3] Opening browser in 3 seconds...
timeout /t 3 /nobreak >nul
start "" "http://localhost:5000"

echo.
echo Server is RUNNING. Press Ctrl+C to stop.
echo.
cd /d "%~dp0backend"
node server.js
pause

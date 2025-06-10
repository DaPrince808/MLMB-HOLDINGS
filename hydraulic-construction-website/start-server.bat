@echo off
echo Starting MLMB Holdings Website Local Server...
echo.
echo Your website will be available at:
echo http://localhost:8000
echo.
echo Press Ctrl+C to stop the server
echo.
pause
echo Starting server...
cd /d "%~dp0"
if exist "C:\Program Files\Python*\python.exe" (
    "C:\Program Files\Python*\python.exe" -m http.server 8000
) else if exist "C:\Python*\python.exe" (
    "C:\Python*\python.exe" -m http.server 8000
) else (
    echo Python not found. Opening website in browser instead...
    start index.html
)
pause


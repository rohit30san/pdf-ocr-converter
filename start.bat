@echo off
setlocal

cd /d "%~dp0"
set "PORT=8000"

where py >nul 2>nul
if %errorlevel%==0 (
  start "" "http://localhost:%PORT%/"
  py -m http.server %PORT%
  goto :eof
)

where python >nul 2>nul
if %errorlevel%==0 (
  start "" "http://localhost:%PORT%/"
  python -m http.server %PORT%
  goto :eof
)

echo Python was not found on PATH.
echo Install Python or run the app from another local static server.
pause
exit /b 1

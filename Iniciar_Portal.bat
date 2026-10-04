@echo off
setlocal
cd /d "%~dp0"
set "PORT=8080"
where py >nul 2>nul
if %errorlevel%==0 (
  start "Geoportal de Acidentes" http://localhost:%PORT%/index.html
  py -3 -m http.server %PORT% --bind 127.0.0.1
) else (
  where python >nul 2>nul
  if %errorlevel%==0 (
    start "Geoportal de Acidentes" http://localhost:%PORT%/index.html
    python -m http.server %PORT% --bind 127.0.0.1
  ) else (
    echo Python nao foi encontrado. Instale Python 3 e tente novamente.
    pause
  )
)
endlocal

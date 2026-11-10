@echo off
setlocal
cd /d "%~dp0"
set "PORT=8092"
where py >nul 2>nul
if %errorlevel%==0 (
  start "Painel de Acidentes v3" http://127.0.0.1:%PORT%/index.html
  py -3 -m http.server %PORT% --bind 127.0.0.1
) else (
  where python >nul 2>nul
  if %errorlevel%==0 (
    start "Painel de Acidentes v3" http://127.0.0.1:%PORT%/index.html
    python -m http.server %PORT% --bind 127.0.0.1
  ) else (
    echo Python 3 nao foi encontrado. Instale Python e tente novamente.
    pause
  )
)
endlocal

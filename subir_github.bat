@echo off
title Subir proyecto a GitHub - glacersv/bachtec
color 0b
cls
echo ======================================================================
echo    SUBIR CODIGO A GITHUB: https://github.com/glacersv/bachtec
echo ======================================================================
echo.
echo Repositorio: https://github.com/glacersv/bachtec.git
echo Rama: main
echo.
set "PATH=%LOCALAPPDATA%\Programs\MinGit\cmd;%PATH%"

echo Preparando archivos y confirmando cambios...
git add .
git commit -m "Actualizacion: Colegio San Jose Bachillerato 2027" >nul 2>&1
echo.
echo Conectando con GitHub y subiendo...
echo (Si te solicita 'Username', ingresa: glacersv)
echo (Si te solicita 'Password', pega tu Token de GitHub 'ghp_...')
echo.
git push -u origin main
echo.
if %errorlevel% equ 0 (
    echo ======================================================================
    echo    SUBIDA A GITHUB COMPLETADA EXITOSAMENTE!
    echo ======================================================================
    echo Tu repositorio esta listo en:
    echo    https://github.com/glacersv/bachtec
    echo ======================================================================
) else (
    echo.
    echo ======================================================================
    echo INFORMACION IMPORTANTE DE AUTENTICACION DE GITHUB:
    echo Desde 2021, GitHub no permite la contrasena normal por terminal.
    echo Para subir, cuando pida Password debes pegar un Personal Access Token.
    echo.
    echo Pasos para obtener tu token en 30 segundos:
    echo 1. Entra a: https://github.com/settings/tokens
    echo 2. Clic en 'Generate new token (classic)'
    echo 3. Marca la casilla 'repo' y genera el token.
    echo 4. Copia ese token (empieza con ghp_...) y pegalo como Password.
    echo ======================================================================
)
echo.
pause

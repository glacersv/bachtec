@echo off
title Desplegar en Firebase Hosting - bachtec-9190c
color 0a
cls
echo ======================================================================
echo    COLEGIO SAN JOSE 2027 - DESPLIEGUE EN GOOGLE FIREBASE HOSTING
echo ======================================================================
echo.
echo Proyecto destino: bachtec-9190c
echo Carpeta publica: public/ (index.html y assets/)
echo.
echo PASO 1 de 2: Iniciar sesion con tu cuenta de Google...
echo ----------------------------------------------------------------------
echo (Si te pregunta en ingles "Allow Firebase to collect...", presiona ENTER)
echo (Luego se abrira tu navegador para que elijas tu cuenta de Google)
echo.
call npx.cmd -y firebase-tools login
echo.
echo ----------------------------------------------------------------------
echo PASO 2 de 2: Subiendo archivos a Firebase Hosting...
echo ----------------------------------------------------------------------
call npx.cmd -y firebase-tools deploy --only hosting --project bachtec-9190c
echo.
echo ======================================================================
echo    PROCESO COMPLETADO
echo ======================================================================
echo Si arriba dice "Deploy complete!", tu web ya esta lista en:
echo    https://bachtec-9190c.web.app
echo    https://bachtec-9190c.firebaseapp.com
echo ======================================================================
echo.
pause

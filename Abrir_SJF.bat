@echo off
title Resolver SJF
set "JAVA="

java -version >nul 2>&1
if not errorlevel 1 set "JAVA=java"

if not defined JAVA for /f "delims=" %%f in ('dir /s /b "%USERPROFILE%\.p2\java.exe" 2^>nul') do set "JAVA=%%f"
if not defined JAVA for /f "delims=" %%f in ('dir /s /b "%USERPROFILE%\eclipse\java.exe" 2^>nul') do set "JAVA=%%f"
if not defined JAVA for /f "delims=" %%f in ('dir /s /b "C:\Program Files\Java\java.exe" 2^>nul') do set "JAVA=%%f"
if not defined JAVA for /f "delims=" %%f in ('dir /s /b "C:\Program Files\Eclipse Adoptium\java.exe" 2^>nul') do set "JAVA=%%f"

if not defined JAVA (
  echo No se encontro Java en este PC.
  echo Instala Java desde https://adoptium.net y vuelve a abrir este archivo.
  pause
  exit /b
)

"%JAVA%" -jar "%~dp0SJF.jar"
pause

@echo off
title SPECS AND FIX BY VICTOR HUGO
setlocal

:: Verifica se o prompt está rodando como Administrador
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :RunAdmin
) else (
    echo [!] SOLICITANDO PERMISSOES DE ADMINISTRADOR...
    powershell -Command "Start-Process cmd -ArgumentList '/c, %~f0' -Verb RunAs"
    exit
)

:RunAdmin
:: Garante que o terminal está executando dentro da pasta onde o script está salvo
pushd "%~dp0"
:: Ajustado para o novo nome do arquivo .ps1
powershell -NoProfile -ExecutionPolicy Bypass -File "specs-and-fix.ps1"
pause
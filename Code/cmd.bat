@echo off
mode con cols=80 lines=35
setlocal enabledelayedexpansion
title Apathy ^| Custom ^CMD
for /f "delims=" %%A in (C:\Users\User\Desktop\art.txt) do (
    echo [92m %%A[0m
)
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
:cmdshka
echo.
echo [1;91m(%username%) [0m~ [94m{%computername%}[0m ~ [96m[%cd%][0m
set /p input="> "
echo.
%input%
goto cmdshka

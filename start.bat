@echo off & setlocal enabledelayedexpansion
rem
set ip=142.251.39.100
rem 
echo test !ip!
ping -n 1 %ip% | find /I /c "TTL" >nul
if  %errorlevel% GEQ  1 (
  exit
) else (
  start chrome.exe -kiosk https://fakebsod.com/windows-8-and-10
  timeout 5
  shutdown -r
  )

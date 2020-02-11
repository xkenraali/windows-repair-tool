title Windows Repair
mode con: cols=70 lines=20
@echo off
color 17
cls
echo.
echo.
echo.
echo                   -------------------------------
echo                   -                             -
echo                   -   Windows repair/resetter   -
echo                   -------------------------------
echo    please run as admistrator
set /p ok=(Are you sure want to reset this pc?? (y,n)
if /i %ok% ==y goto re 
if /i %ok% ==n goto check

:check
cls
echo Thank you for using "Windows repair 1.0"
timeout /t 2 >nul
exit

:re
echo starting progress...
sfc /scannow
cd C:/ 
cd windows
if exist system32 (echo check) else goto help
cls
systemreset /?
cls
start chrome https://support.microsoft.com/fi-fi/help/4026528/windows-10-reset-or-reinstall
cls
pause
echo Repair is done and system needs reboot.
echo rebooting..
timeout /t 2 /doskey >nul
shutdown /r

:help
echo system32 not found!!!
start chrome https://support.microsoft.com/fi-fi/help/4026528/windows-10-reset-or-reinstall
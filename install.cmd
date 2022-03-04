@echo off&color 2f&Title Tool Optimize Ram Ver 2.0 By DucNghia&mode 80,20

:main
echo.
echo      ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo      º                     Optimize tool Ram Ver 2.0                      º
echo      º                                                                    º
echo      º   Coded by DUCNGHIA ^& Rebuild by Khang-KTN ^& Rebuild by PhCtrlZ    º
echo      º     __________________________________________________________     º
echo.     º                                                                    º
echo      º                         Do you want install?                       º
echo      º                                                                    º
echo      ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.
choice /c yn /m "Let Choice" 

if %errorlevel% == 1 goto y
if %errorlevel% == 2 goto n


:y
COPY "Files\*.*" "%temp%\*.*"
start Files\project.bat
goto exit

:n
timeout /t 3 /nobreak>nul
goto exit

:exit
exit

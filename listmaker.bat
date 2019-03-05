@echo off
title List thing
color f
set /a num=0

cls
echo.
echo List title
set /p title=: 
set title2=%title: =_%
cls
echo ========================== >>%userprofile%\desktop\%title2%.txt
echo %title% >>%userprofile%\desktop\%title2%.txt
echo ========================== >>%userprofile%\desktop\%title2%.txt

if exist %userprofile%\desktop\reloader.bat (del %userprofile%\desktop\reloader.bat)
goto reloader
:reloaded

:add
set /a num=%num%+1
cls
echo.
echo Something to add to the list
set /p add=: 
echo %num% - %add% >>%userprofile%\desktop\%title2%.txt
cls
goto add

:reloader
(
echo @echo off
echo mode 40,40
echo :here
echo type %%userprofile%%\desktop\%title2%.txt
echo @ping.exe 127.0.0.1 -n 2 -w 2000 ^> nul
echo cls
echo goto here
) >%userprofile%\Desktop\reloader.bat
start "" %userprofile%\desktop\reloader.bat
goto reloaded

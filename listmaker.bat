@echo off
title List maker
color f
set /a num=0

cls
echo.
echo List title
set /p title=: 
set title2=%title: =_%
cls
echo ========================== >>%userprofile%\desktop\%title2%.txt
echo %title%.txt >>%userprofile%\desktop\%title2%.txt
echo ========================== >>%userprofile%\desktop\%title2%.txt

:add
cls
set /a num=%num%+1
type %userprofile%\desktop\%title2%.txt
::set /a num1=%num%+1
set /p add=%num%: 
echo %num% - %add% >>%userprofile%\desktop\%title2%.txt
cls
goto add

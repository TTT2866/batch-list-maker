@echo off
title List maker
color f
mode 60,10
set /a num=0

cls
echo.
set destination=%cd%
echo List title
set /p title=: 
set title2=%title: =_%
cls
echo ========================== >>%destination%\%title2%.txt
echo %title%.txt >>%destination%\%title2%.txt
echo ========================== >>%destination%\%title2%.txt

:add
cls
set /a num=%num%+1
type %destination%\%title2%.txt
set /p add=%num%: 
echo %num% - %add% >>%destination%\%title2%.txt
cls
goto add

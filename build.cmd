@echo off
echo Cleaning up...
del /F dist\*.mp3 
del /F dist\*.LICENSE.txt 
del /F dist\*.js 
del /F dist\*.html 
del /F dist\*.css 
call yarn
call yarn build
echo Building sneaker.exe ...
set GOOS=linux
go build -o sneaker cmd\sneaker-server\main.go
set GOOS=windows
go build -o sneaker.exe cmd\sneaker-server\main.go
echo Done.

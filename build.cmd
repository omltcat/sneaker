@echo off
::set GOARCH=386

echo Cleaning up...
del cmd\sneaker-server\resource.syso
del /F dist\*.mp3 
del /F dist\*.LICENSE.txt 
del /F dist\*.js 
del /F dist\*.html 
del /F dist\*.css 
go install github.com/josephspurrier/goversioninfo/cmd/goversioninfo@latest
call yarn
call yarn build
echo Building sneaker.exe ...
cd cmd\sneaker-server
go generate
set GOOS=linux
go build -o ..\..\bin\sneaker
set GOOS=windows
go build -o ..\..\bin\sneaker.exe
cd ..\..
echo Done.

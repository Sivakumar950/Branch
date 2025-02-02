@echo off

set DEPLOY_DIR=D:\Development\SampleWebsite

git pull origin main

xcopy * %DEPLOY_DIR% /E /Y

net stop "W3SVC" & net start "W3SVC"

echo Deployment complete!
pause

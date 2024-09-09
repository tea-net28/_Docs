@echo off
chcp 65001

openfiles > nul 2>&1
if %errorlevel% == 1 (
    Powershell Start-Process -FilePath "%0" -Verb RunAs
    echo "管理者権限で実行します"
    timeout /t 5
    exit
)
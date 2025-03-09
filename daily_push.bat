@echo off
echo [%date% %time%] 脚本开始执行 >> log.txt
cd /d D:\GitProjects\2024-spring-semester
if errorlevel 1 (
    echo [%date% %time%] 切换目录失败 >> log.txt
    exit /b 1
)
git add .
if errorlevel 1 (
    echo [%date% %time%] git add 失败 >> log.txt
    exit /b 1
)
git commit -m "Daily Auto Commit: %date%"
if errorlevel 1 (
    echo [%date% %time%] git commit 失败 >> log.txt
    exit /b 1
)
git push origin main
if errorlevel 1 (
    echo [%date% %time%] git push 失败 >> log.txt
    exit /b 1
)
echo [%date% %time%] 脚本执行成功 >> log.txt
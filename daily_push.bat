@echo off
cd /d D:\GitProjects\2024-spring-semester
git add .
git commit -m "Daily Auto Commit: %date%"
git push origin main

@echo off
chcp 65001 >nul
setlocal
set "HERE=%~dp0"
set "PETPID="
if exist "%HERE%data\pet.pid" set /p PETPID=<"%HERE%data\pet.pid"
if defined PETPID (
  taskkill /pid %PETPID% /f >nul 2>nul
  echo 桌宠（PID %PETPID%）已退出。
) else (
  echo 没有找到 data\pet.pid ，可能已经在右键菜单里退出了。
)
del "%HERE%data\pet.pid" >nul 2>nul
timeout /t 2 >nul
exit /b 0

@echo off
chcp 65001 >nul
setlocal
set "HERE=%~dp0"
set "PYW="

if defined DSH_PYTHON set "PYW=%DSH_PYTHON%"

if not defined PYW if exist "%HERE%python-path.txt" set /p PYW=<"%HERE%python-path.txt"

if not defined PYW if exist "%USERPROFILE%\.dsh\dsh-runtimes\dsh-primary-runtime\dependencies\python\pythonw.exe" set "PYW=%USERPROFILE%\.dsh\dsh-runtimes\dsh-primary-runtime\dependencies\python\pythonw.exe"

if not defined PYW where pythonw >nul 2>nul && set "PYW=pythonw"
if not defined PYW where python >nul 2>nul && set "PYW=python"

if not defined PYW (
  echo.
  echo  [x] 没有找到 Python。请安装 Python 3.10+ 并勾选 Add to PATH，
  echo      或者把 pythonw.exe 的完整路径写进本目录的 python-path.txt 。
  echo.
  pause
  exit /b 1
)

start "" "%PYW%" "%HERE%src\main.py"
exit /b 0

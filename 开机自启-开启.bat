@echo off
chcp 65001 >nul
powershell -NoProfile -ExecutionPolicy Bypass -Command "$s=(New-Object -ComObject WScript.Shell).CreateShortcut([Environment]::GetFolderPath('Startup')+'\DeepseekChanPet.lnk'); $s.TargetPath='%~dp0启动桌宠.bat'; $s.WorkingDirectory='%~dp0'; $s.WindowStyle=7; $s.Description='Deepseek Chan 桌宠'; $s.Save(); Write-Host ('已设置开机自启: ' + [Environment]::GetFolderPath('Startup') + '\DeepseekChanPet.lnk')"
timeout /t 3 >nul
exit /b 0

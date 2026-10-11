@echo off
chcp 65001 >nul
powershell -NoProfile -ExecutionPolicy Bypass -Command "$p=[Environment]::GetFolderPath('Startup')+'\DeepseekChanPet.lnk'; if (Test-Path $p) { Remove-Item $p -Force; Write-Host '已取消开机自启' } else { Write-Host '本来就没有设置开机自启' }"
timeout /t 3 >nul
exit /b 0

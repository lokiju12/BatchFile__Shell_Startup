@echo off
:: 사용자 배포를 통해 전체 사용자의 시작 프로그램을 제어하기 위해 작성

:: HKLM에 있는 자동 시작 프로그램을 삭제
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run /v TeamsMachineInstaller /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run /v HncUpdate96 /f

:: HKCU에 있는 자동 시작 프로그램을 삭제
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v com.squirrel.Teams.Teams /f
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v OneDrive /f

pause

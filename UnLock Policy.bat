@echo off

rem Enabling Power Options
reg add "HKLM\SOFTWARE\Policies\Microsoft\Power" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Power\PowerSettings" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Power\PowerSettings" /v ActivePowerScheme /t REG_SZ /d 0 /f

rem Enabling change of profile picture
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Settings\AllowYourAccount" /v value /t REG_DWORD /d 1 /f

rem Screenlock policy
reg add "HKCU\Control Panel\Desktop" /v ScreenSaveTimeOut /t REG_SZ /d "600" /f
reg add "HKCU\Control Panel\Desktop" /v ScreenSaverIsEnabled /t REG_DWORD /d 1 /f

rem Enabling Mass Storage
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR" /v Start /t REG_DWORD /d "3" /f

pause

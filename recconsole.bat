
@echo off
echo FrontRub Recovery Console for Windows
ver
choice /C:YN /M:"Do you want to compress system files to save space?"
IF ERRORLEVEL ==1 GOTO Compress
IF ERRORLEVEL ==2 GOTO Finish
GOTO next

:Compress
compact /c /s

:Finish
echo The compress operation completed successfully.

:next
cmd.exe /k cd C:\

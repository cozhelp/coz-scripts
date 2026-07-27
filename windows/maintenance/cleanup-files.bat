:Cleanup_Files
Echo Cleanup and remove old unused files started
FORFILES /P "%WinDir%\Logs" /S /D -30 /C "cmd /c IF @isdir == FALSE del /f /q @path">NUL
FORFILES /P "%WinDir%\Logs" /S /D -30 /C "cmd /c IF @isdir == TRUE rd /S /Q @path">NUL
FORFILES /P "%WinDir%\Temp" /S /D -30 /C "cmd /c IF @isdir == FALSE del /f /q @path">NUL
FORFILES /P "%WinDir%\Temp" /S /D -30 /C "cmd /c IF @isdir == TRUE rd /S /Q @path">NUL
FORFILES /P "%Temp%" /S /D -30 /C "cmd /c IF @isdir == FALSE del /f /q @path">NUL
FORFILES /P "%Temp%" /S /D -30 /C "cmd /c IF @isdir == TRUE rd /S /Q @path">NUL
FORFILES /P "%UserProfile%\AppData\Local\Temp" /S /D -30 /C "cmd /c IF @isdir == FALSE del /f /q @path">NUL
FORFILES /P "%UserProfile%\AppData\Local\Temp" /S /D -30 /C "cmd /c IF @isdir == TRUE rd /S /Q @path">NUL
FORFILES /P "%UserProfile%\AppData\Local\Temporary Internet Files" /S /D -30 /C "cmd /c IF @isdir == FALSE del /f /q @path">NUL
FORFILES /P "%UserProfile%\AppData\Local\Temporary Internet Files" /S /D -30 /C "cmd /c IF @isdir == TRUE rd /S /Q @path">NUL
REM Clean up Intune files
FORFILES /P "%WinDir%\System32\config\systemprofile\AppData\Local\mdm" /S /D -30 /C "cmd /c IF @isdir == FALSE del /f /q @path" > NUL 2>&1
REM Remove folders that end in .tmp that are older than 30 days
FORFILES /P "%WinDir%\System32\config\systemprofile\AppData\Local\mdm" /M *.tmp /S /D -30 /C "cmd /c IF @isdir == TRUE rd /S /Q @path" > NUL 2>&1
REM FORFILES /P "%WinDir%\System32\config\systemprofile\AppData\Local\mdm" /S /D -30 /C "cmd /c IF @isdir == TRUE rd /S /Q @path" > NUL 2>&1
Echo Cleanup and remove old unused files finished
echo.
GoTo :EOF
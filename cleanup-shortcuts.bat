@Echo Off
Call :Start

Call :Del "C:\Users\Public\Desktop\Cisco Webex Meetings.lnk"
Call :Del "C:\Users\Public\Desktop\Firefox.lnk"
Call :Del "C:\Users\Public\Desktop\Oracle VM VirtualBox.lnk"
Call :Del "C:\Users\Public\Desktop\Zoom.lnk"
Call :Del "C:\Users\Public\Desktop\Visual Studio Code.lnk"
Call :Del "C:\Users\Public\Desktop\Nextcloud.lnk"
Call :Del "C:\Users\Public\Desktop\Google Chrome.lnk"
Call :Del "C:\Users\Public\Desktop\LibreOffice *.lnk"
Call :Del "C:\Users\Public\Desktop\RingCentral.lnk"

Call :Del "%Desktop%\qFlipper.lnk"



:Start
REM Grab the path for the desktop from the registry
for /f "tokens=2*" %%a in ('REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Desktop"') do set "Desktop=%%~b"
GoTo :EOF

:Del
Set FileToDelete=%1
If Not Exist %FileToDelete% GoTo :EOF
Echo Deleting %FileToDelete%
Del /q /f %FileToDelete%
GoTo :EOF

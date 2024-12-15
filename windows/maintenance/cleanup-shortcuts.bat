@Echo Off
Call :Start

Call :Del "Brave.lnk"
Call :Del "Cisco Webex Meetings.lnk"
Call :Del "Dell Display Manager*.lnk"
Call :Del "Discord.lnk"
Call :Del "Google Chrome.lnk"
Call :Del "Firefox.lnk"
Call :Del "LibreOffice *.lnk"
Call :Del "Nextcloud.lnk"
Call :Del "Microsoft Edge.lnk"
Call :Del "Mumble.lnk"
Call :Del "Oracle VM VirtualBox.lnk"
Call :Del "pCloud Drive.lnk"
Call :Del "qFlipper.lnk"
Call :Del "RingCentral.lnk"
Call :Del "Slack.lnk"
Call :Del "Signal.lnk"
Call :Del "Spotify.lnk"
Call :Del "Visual Studio Code.lnk"
Call :Del "Zoom.lnk"
Call :Del "Zoom Workplace.lnk"
Call :Del "Vonage Business.lnk"

GoTo :EOF



:Start
REM Grab the path for the desktop from the registry
for /f "tokens=2*" %%a in ('REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Desktop"') do set "Desktop=%%~b"
Set Desktop=%UserProfile%\Desktop
If Exist "%OneDrive%\Desktop" Set Desktop=%OneDrive%\Desktop
GoTo :EOF



:Del
Set FileToDelete=%1
Set FileToDelete=%FileToDelete:"=%
Set Exists=0
Echo Checking for %FileToDelete%
If Exist "%Desktop%\%FileToDelete%" Set Exists=1
If Exist "C:\Users\Public\Desktop\%FileToDelete%" Set Exists=2
If /i "%Exists%" EQU "0" GoTo :EOF
Echo Deleting %FileToDelete%
If /i "%Exists%" EQU "1" Set FileToDelete="%Desktop%\%FileToDelete%"
If /i "%Exists%" EQU "2" Set FileToDelete="C:\Users\Public\Desktop\%FileToDelete%"
GoTo :EOF

@Echo Off
Call :Start

Call :Del "Brave.lnk"
Call :Del "Cisco Webex Meetings.lnk"
Call :Del "Dell Display Manager*.lnk"
Call :Del "Discord.lnk"
Call :Del "Epic Games Launcher.lnk"
Call :Del "Google Chrome.lnk"
Call :Del "Firefox.lnk"
Call :Del "LibreOffice *.lnk"
Call :Del "Nextcloud.lnk"
Call :Del "Macro Deck.lnk"
Call :Del "Microsoft Edge*.lnk"
Call :Del "Mumble.lnk"
Call :Del "Oracle VM VirtualBox.lnk"
Call :Del "pCloud Drive.lnk"
Call :Del "Poly Lens Desktop.lnk"
Call :Del "qFlipper.lnk"
Call :Del "RingCentral.lnk"
Call :Del "Slack.lnk"
Call :Del "Signal.lnk"
Call :Del "Spotify.lnk"
Call :Del "Steam.lnk"
Call :Del "TeamViewer Host.lnk"
Call :Del "Visual Studio Code.lnk"
Call :Del "Vonage Business.lnk"
Call :Del "Winaero Tweaker.lnk"
Call :Del "Zoom.lnk"
Call :Del "Zoom Workplace.lnk"


GoTo :EOF


:Start
REM Grab the path for the desktop from the registry
REM for /f "tokens=2*" %%a in ('REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Desktop"') do set "Desktop=%%~b"
REM echo Desktop: %Desktop%
Set Desktop=%UserProfile%\Desktop
If Exist "%OneDrive%\Desktop" Set Desktop=%OneDrive%\Desktop
GoTo :EOF


:Del
Set FileToDelete=%1
Set FileToDelete=%FileToDelete:"=%
REM Echo Checking for %FileToDelete%
If Exist "%Desktop%\%FileToDelete%" Echo Deleting "%Desktop%\%FileToDelete%"
If Exist "%Desktop%\%FileToDelete%" Del /f "%Desktop%\%FileToDelete%"
If Exist "C:\Users\Public\Desktop\%FileToDelete%" Echo Deleting "C:\Users\Public\Desktop\%FileToDelete%"
If Exist "C:\Users\Public\Desktop\%FileToDelete%" Del /f "C:\Users\Public\Desktop\%FileToDelete%"
GoTo :EOF

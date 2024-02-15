# scripts
Scripts for misc purposes


Run cleanup:<br />
@curl "https://raw.githubusercontent.com/cozhelp/coz-scripts/main/windows/maintenance/cleanup-shortcuts.bat" -s -o "%Temp%\RunThis.bat" && call "%Temp%\RunThis.bat" && del /q /f "%Temp%\RunThis.bat"



# Download the file "cleanup-shortcuts.bat" from the GitHub repository and save it to the temp directory
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/cozhelp/coz-scripts/main/windows/maintenance/cleanup-shortcuts.bat" -OutFile "$env:Temp\RunThis.bat"
# Run "$env:Temp\RunThis.bat"
Start-Process -FilePath "$env:Temp\RunThis.bat" -Wait
# Remove the file "$env:Temp\RunThis.bat"
Remove-Item -Path "$env:Temp\RunThis.bat" -Force

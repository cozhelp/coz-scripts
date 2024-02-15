@Echo off
If Exist "%Temp%\PatchMyPC.exe" Del "%Temp%\PatchMyPC.exe"
curl https://patchmypc.com/freeupdater/PatchMyPC.exe -o "%Temp%\PatchMyPC.exe"
start "a" /wait "%Temp%\PatchMyPC.exe" /s
Del "%Temp%\PatchMyPC.exe"
exit 0

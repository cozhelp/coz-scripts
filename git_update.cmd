@Echo Off

Set Comment=%*
If /i "%Comment%" EQU "" Set /p Comment=Comment: 
If /i "%Comment%" EQU "" Set Comment=Changes Made

CD /D "%~dp0"
CLS
Echo Adding Files
git add .
Echo.
Echo Commiting changes
git commit -m "%Comment%"
Echo.
Echo Pushing changes
git push
Echo.
Echo Pulling changes
git pull
Echo.
attrib +h ".git"
git gc
Echo Done! %Date% %Time%
timeout 5
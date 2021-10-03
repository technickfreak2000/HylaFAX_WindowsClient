@echo off
echo File to fax:
echo %1

SET /P _inputname= Please enter Number:

"C:\Program Files (x86)\Hylapex\hylapex_cl.exe" -H <server> -u <username> -p <password> --noconvert -f %1 -d %_inputname%

:choice
set /P c= Open HylaPEx[Y/N]?
if /I "%c%" EQU "Y" goto :open
if /I "%c%" EQU "N" goto :exit
goto :choice

:open
powershell -command "start-process 'C:\Program Files (x86)\Hylapex\hylapex.exe'"
exit

:exit
exit

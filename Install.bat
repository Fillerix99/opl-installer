@echo off
echo Downloading and installing arg tester by opl...
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://github.com/opl-/winter-arg-tester/archive/master.zip', 'master.zip') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://dl.dropboxusercontent.com/u/33926727/7za.exe', '7za.exe') }"
7za.exe x master.zip
del master.zip
echo Installing node(portable)
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://nodejs.org/dist/latest/win-x86/node.exe', 'node.exe') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://nodejs.org/dist/latest/win-x86/node.lib', 'node.lib') }"
move node.exe winter-arg-tester-master/node.exe
move node.lib winter-arg-tester-master/node.lib
echo Downloading script to run...
echo Done Installing, run the bot from the folder created winter-arg-tester-master and execute RunBruteForce.bat
echo When an update appears, close the RunBruteForce.bat window and open this bat file again
pause

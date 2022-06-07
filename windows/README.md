💾 Download curl for windows:
```
https://curl.se/windows/
```

💾 Download smartmontools (smartctl) for windows:
```
https://builds.smartmontools.org/ (smartmontools-win32-setup-*.exe)
```

⚙️ Install smartmontools
```
Copy c:\Program Files\smartmontools\bin\smartctl.exe to some new location, in our case it was x:\smart\
```

💡 Example of paths:
```
Main path => x:\smart\
Curl path => x:\smart\curl\bin\curl.exe
Smartctl path => x:\smart\smartctl.exe
Smartctl script path => x:\smart\smart.bat
Curl script path => x:\smart\curl.bat
```

💡 Before you start creating scripts change /dev/sda according to your disk:
```
- Output is written to sda.txt file.
- smartctl.exe will generate S.M.A.R.T data for /dev/sda disk
```

📝 Create script smart.bat:
```
%CD%\smartctl.exe -a /dev/sda > x:\smart\sda.txt
```

📝 Create script curl.bat:
```
%CD%\curl\bin\curl.exe -F smart=@sda.txt "https://disk.lol/api?disk=/dev/sda/"
pause
```

➡️ 💡 Run scripts:
```
smart.bat
curl.bat
```

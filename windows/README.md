Download curl for windows:
```
https://curl.se/windows/
```

Download smartmontools (smartctl) for windows:
```
https://builds.smartmontools.org/ (smartmontools-win32-setup-*.exe)
```

Install smartmontools
```
Copy c:\Program Files\smartmontools\bin\smartctl.exe to some new location, in our case it was x:\smart\
```

Before you start creating scripts change according to your drive.
- Output is written to sda.txt file.
- smartctl.exe will generate S.M.A.R.T data for /dev/sda disk

Create script smart.bat:
```
%CD%\smartctl.exe -a /dev/sda > e:\smart\sda.txt
```

Create script curl.bat:
```
%CD%\curl\curl-7.83.1_3-win64-mingw\bin\curl.exe -F smart=@sda.txt "https://disk.lol/api?disk=/dev/sda/"
pause
```

Run scripts:
```
smart.bat
curl.bat
```

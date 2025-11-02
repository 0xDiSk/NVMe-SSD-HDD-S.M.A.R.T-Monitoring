# 🛸 NVMe / 🚀 SSD / 🖴 HDD S.M.A.R.T Monitoring. 

[![Git AntiVirus Scan](https://github.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/actions/workflows/antivirus.scan.yml/badge.svg?branch=main)](https://github.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/actions/workflows/antivirus.scan.yml)
[![Test diskcheck.0xc0d3.cc for publicly known js vulnerabilities](https://github.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/actions/workflows/vulnerability-check-diskcheck.0xc0d3.cc.yml/badge.svg)](https://github.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/actions/workflows/vulnerability-check-diskcheck.0xc0d3.cc.yml)

```
VirusTotal checked:
☣️ Site and scripts: without malware code!
☢️ Site and scripts: without virus code!
✅ 100 % Clean source code!
```

***❓ How to use the scripts?***
```
Ubuntu/Debian/CentOS:
wget -qO- https://diskcheck.0xc0d3.cc/smart.sh | sh
or
wget -qO- https://raw.githubusercontent.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/main/smart.sh | sh
or
wget -qO- https://diskcheck.0xc0d3.cc/verify-and-run.sh | sh
or
wget -qO- https://raw.githubusercontent.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/main/verify-and-run.sh | sh

Windows:
https://github.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/tree/main/windows
```

***❓ Why to use our tool?***
```
Because:
- You can share with others the disk info
- You can show how much hours has been the disk run without any errors
- You can show other when the disk is failing
- You can show temperature chart
- You also will have complete and original (without the serial number) s.m.a.r.t history of your disk(s) when sending s.m.a.r.t data to our api
- Our script also checks the disks in hardware raid, which normally smartctl without scripting it first won´t do
- And also you can get it working on windows, with the same things as above
- You contribute to our little community of disk fans who love s.m.a.r.t data, who love disks, who love to code things

And finally and not lastly:
- We are active coders
- Right now this is new addition: "Battle page for Power on hours": https://diskcheck.0xc0d3.cc/battle-power_on_hours
```

***❓ What are the requirements to run the scripts?***
```
Ubuntu/Debian/CentOS:
- Curl
- SmartMonTools (smartctl)
- Wget (verify-and-run.sh)

Windows:
- Curl
- SmartMonTools (smartctl)
```

***❤️ Thanks goes to:***
|👨👩 Who|❓ Why|
|---|--:|
@Zappie at https://lowendtalk.com/profile/Zappie| Pointing out and helping out with megaraid and serveraid hardware raid test.
@Everyone| Everyone who tests the scripts and site.

***❓ Why disk.lol domain name and extension?***
Well it was simple for us. The domain name is short. The domain name was relative cheap. The domain name has domain info privacy.

***❓ Does it works?***
|🖴 Type of disk or raid|❓ Generate S.M.A.R.T data|❓ Send to api|❓ Temperature Chart|❓ Hidden Serial Number|❓ Serial Number sent over api
|---|---|---|---|---|--:|
HDD|✅|✅|✅|✅|❌
SSD|✅|✅|✅|✅|❌
NVMe|✅|✅|✅|✅|❌
MegaRaid|✅|✅|✅|✅|❌
ServeRAID|✅|✅|✅|✅|❌

***✅ Check the script hashes:***
```
wget -qO- https://diskcheck.0xc0d3.cc/smart.sh | md5sum | awk '{print $1}'
wget -qO- https://diskcheck.0xc0d3.cc/smart-test.sh | md5sum | awk '{print $1}'
wget -qO- https://diskcheck.0xc0d3.cc/verify-and-run.sh | md5sum | awk '{print $1}'
```

|⚙️ Script|#️⃣ Hash|
|---|--:|
smart.sh|98c93ad3e4e5e07e782033ac478ad096
smart-test.sh|6bc155992975d2a50046d0ad2cb6b7c4
verify-and-run.sh|a17e97df728ab03d4c5971759921203f


***✅ Virus check:***
100 % Clean source code - "No security vendors flagged this URL as malicious"

|⚙️ Script or Site|📄 Url to verify|
|---|--:|
diskcheck.0xc0d3.cc|https://www.virustotal.com/gui/url/84d9caef363d9b494ced0ad8f99f86ff34db7dac75488b86d0e30ca65ca29d49
diskcheck.0xc0d3.cc/smart.sh|https://www.virustotal.com/gui/url/56ec5548a94245caded3c62b797ca1f05c174eea71a4b924ced7c0c4e1054c8a
diskcheck.0xc0d3.cc/smart-test.sh|https://www.virustotal.com/gui/url/3d8b4a8e8b869d33a2d28d4b6063dad16c0d546edfdea5bdbbcbdfb19ad91f3e
diskcheck.0xc0d3.cc/verify-and-run.sh|https://www.virustotal.com/gui/url/986fb1ea6915e6fd5b1cad0b940f65517d491f5d52d5176ceb63862fc6486fd7
github raw smart.sh|https://www.virustotal.com/gui/url/e1b74e82688c8190e9192c4699cbe6b9cc23c16b35fa49579918b0129ed82e75
github raw smart-test.sh|https://www.virustotal.com/gui/url/f6110301df8cd009d04392e0a6aa04cce32857c8e8a51d5e851c10a029b08027
github raw verify-and-run.sh|https://www.virustotal.com/gui/url/be6524676e2e8251f74db150e371b9db3d87a708fd7692eb715a221f5246eb5f
github raw smartmontools-build.sh|https://www.virustotal.com/gui/url/b02087dd0d013367af80df24e4abc349deafbc25e8b9385f55e7d8ee54316124
github raw README.md| https://www.virustotal.com/gui/url/62ae953bfb4c531fdcb7d268369ac610ade6a46209b84c153a54877dc18d018c
github raw windows README.md|https://www.virustotal.com/gui/url/11097db574e0716a6df2dea9434b4ba0834a961d72864cb8b769b92ba7a75318

***🛸 Optimized page speed:***
|⚙️ Service|📄 Url to test|🌍 Tested from|🚀 Speed
|---|---|---|--:|
Pingdom|https://tools.pingdom.com/#604f5f0edd400000|DE|435ms
GTmetrix|https://gtmetrix.com/reports/disk.lol/csVVp3H5/|UK|194ms
PageSpeed|https://pagespeed.web.dev/report?url=https%3A%2F%2Fdisk.lol%2F&form_factor=desktop|?|200ms

***⛔ Is your site disk.lol blacklisted?***
|⚙️ Service|📄 Url to test|❓ Blacklisted|❓ 100% Clean - NOT Blacklisted
|---|---|---|--:|
MultiRBL|https://multirbl.valli.org/lookup/diskcheck.0xc0d3.cc.html|❌|✅
SpamHaus|https://check.spamhaus.org/results?query=diskcheck.0xc0d3.cc|❌|✅
MXToolBox|https://mxtoolbox.com/SuperTool.aspx?action=blacklist%3adiskcheck.0xc0d3.cc&run=toolpage|❌|✅

***💾 Archived scripts and sites:***
|⚙️ Service|📄 Url|⚙️ Script or Site
|---|---|--:|
WayBack Machine|[https://web.archive.org/web/*/https://diskcheck.0xc0d3.cc/](https://web.archive.org/web/*/https://disk.lol/)|disk.lol
WayBack Machine|[https://web.archive.org/web/*/https://diskcheck.0xc0d3.cc/smart.sh](https://web.archive.org/web/*/https://disk.lol/smart.sh)|disk.lol/smart.sh
WayBack Machine|[https://web.archive.org/web/*/https://diskcheck.0xc0d3.cc/smart-test.sh](https://web.archive.org/web/*/https://disk.lol/smart-test.sh)|disk.lol/smart-test.sh
WayBack Machine|[https://web.archive.org/web/*/https://diskcheck.0xc0d3.cc/verify-and-run.sh](https://web.archive.org/web/*/https://disk.lol/verify-and-run.sh)|disk.lol/verify-and-run.sh
Archive.Today|https://archive.ph/diskcheck.0xc0d3.cc|diskcheck.0xc0d3.cc
Archive.Today|https://archive.ph/Cgkgz|diskcheck.0xc0d3.cc/smart.sh
Archive.Today|https://archive.ph/TP1hl|diskcheck.0xc0d3.cc/smart-test.sh
Archive.Today|https://archive.ph/sRiMW|diskcheck.0xc0d3.cc/verify-and-run.sh

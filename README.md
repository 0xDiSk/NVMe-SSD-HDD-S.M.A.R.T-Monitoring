# 🛸 NVMe / 🚀 SSD / 🖴 HDD S.M.A.R.T Monitoring. 

[![Codacy Security Scan](https://github.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/actions/workflows/codacy.yml/badge.svg?branch=main)](https://github.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/actions/workflows/codacy.yml) [![DevSkim](https://github.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/actions/workflows/devskim.yml/badge.svg)](https://github.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/actions/workflows/devskim.yml) [![Test diskcheck.co for publicly known js vulnerabilities](https://github.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/actions/workflows/is-website-vulnerable-diskcheck.co.yml/badge.svg)](https://github.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/actions/workflows/is-website-vulnerable-diskcheck.co.yml) [![Test disk.lol for publicly known js vulnerabilities](https://github.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/actions/workflows/is-website-vulnerable-disk.lol.yml/badge.svg)](https://github.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/actions/workflows/is-website-vulnerable-disk.lol.yml)

```
VirusTotal checked:
☣️ Site and scripts: without malware code!
☢️ Site and scripts: without virus code!
✅ 100 % Clean source code!
```

***❓ How to use the scripts?***
```
Ubuntu/Debian/CentOS:
wget -qO- https://disk.lol/smart.sh | sh
or
wget -qO- https://diskcheck.co/smart.sh | sh
or
wget -qO- https://raw.githubusercontent.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/main/smart.sh | sh
or
wget -qO- https://disk.lol/verify-and-run.sh | sh
or
wget -qO- https://diskcheck.co/verify-and-run.sh | sh
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
- Right now this is new addition: "Battle page for Power on hours": https://diskcheck.co/battle-power_on_hours
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
wget -qO- https://disk.lol/smart.sh | md5sum | awk '{print $1}'
wget -qO- https://disk.lol/smart-test.sh | md5sum | awk '{print $1}'
wget -qO- https://disk.lol/verify-and-run.sh | md5sum | awk '{print $1}'
wget -qO- https://diskcheck.co/smart.sh | md5sum | awk '{print $1}'
wget -qO- https://diskcheck.co/smart-test.sh | md5sum | awk '{print $1}'
wget -qO- https://diskcheck.co/verify-and-run.sh | md5sum | awk '{print $1}'
```

|⚙️ Script|#️⃣ Hash|
|---|--:|
smart.sh|af6dbd082d7bca2a7cfb9e7d2fce420a
smart-test.sh|6bc155992975d2a50046d0ad2cb6b7c4
verify-and-run.sh|23dff2196791c063fe63b3f263f0a62f


***✅ Virus check:***
100 % Clean source code - "No security vendors flagged this URL as malicious"

|⚙️ Script or Site|📄 Url to verify|
|---|--:|
disk.lol|https://www.virustotal.com/gui/url/ed36c768c961b2e7d62b1560fb3eeb0ce8267a73dc1f24ebb46e4619c0f3dc71
disk.lol/smart.sh|https://www.virustotal.com/gui/url/b8911829e94fd0b1347e1405484bc7c227249fe2968e7ecb473929775596abcc
disk.lol/smart-test.sh|https://www.virustotal.com/gui/url/6c84dfd510d55eb21360b28876a73740e96e41abad99a692ea3f1aa996fa6940
disk.lol/verify-and-run.sh|https://www.virustotal.com/gui/url/c6402b85a9753e3c988870ee2d54019453e0ad41afcd773f0052158034fa3f29
diskcheck.co|https://www.virustotal.com/gui/url/84d9caef363d9b494ced0ad8f99f86ff34db7dac75488b86d0e30ca65ca29d49
diskcheck.co/smart.sh|https://www.virustotal.com/gui/url/56ec5548a94245caded3c62b797ca1f05c174eea71a4b924ced7c0c4e1054c8a
diskcheck.co/smart-test.sh|https://www.virustotal.com/gui/url/3d8b4a8e8b869d33a2d28d4b6063dad16c0d546edfdea5bdbbcbdfb19ad91f3e
diskcheck.co/verify-and-run.sh|https://www.virustotal.com/gui/url/986fb1ea6915e6fd5b1cad0b940f65517d491f5d52d5176ceb63862fc6486fd7
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
MultiRBL|https://multirbl.valli.org/lookup/disk.lol.html|❌|✅
SpamHaus|https://check.spamhaus.org/not_listed/?searchterm=disk.lol|❌|✅
MXToolBox|https://mxtoolbox.com/SuperTool.aspx?action=blacklist%3adisk.lol&run=toolpage|❌|✅

***💾 Archived scripts and sites:***
|⚙️ Service|📄 Url|⚙️ Script or Site
|---|---|--:|
WayBack Machine|[https://web.archive.org/web/*/https://disk.lol/](https://web.archive.org/web/*/https://disk.lol/)|disk.lol
WayBack Machine|[https://web.archive.org/web/*/https://disk.lol/smart.sh](https://web.archive.org/web/*/https://disk.lol/smart.sh)|disk.lol/smart.sh
WayBack Machine|[https://web.archive.org/web/*/https://disk.lol/smart-test.sh](https://web.archive.org/web/*/https://disk.lol/smart-test.sh)|disk.lol/smart-test.sh
WayBack Machine|[https://web.archive.org/web/*/https://disk.lol/verify-and-run.sh](https://web.archive.org/web/*/https://disk.lol/verify-and-run.sh)|disk.lol/verify-and-run.sh
Archive.Today|https://archive.ph/disk.lol|disk.lol
Archive.Today|https://archive.ph/Cgkgz|disk.lol/smart.sh
Archive.Today|https://archive.ph/TP1hl|disk.lol/smart-test.sh
Archive.Today|https://archive.ph/sRiMW|disk.lol/verify-and-run.sh

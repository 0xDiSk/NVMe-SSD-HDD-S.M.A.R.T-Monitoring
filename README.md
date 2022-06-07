# NVMe-SSD-HDD-S.M.A.R.T-Monitoring
🚀 NVMe / 🚀 SSD / 🖴 HDD S.M.A.R.T Monitoring. 

***❓ How to use the scripts?***
```
Ubuntu/Debian/CentOS:
wget -qO- https://disk.lol/smart.sh | sh
or
wget -qO- https://raw.githubusercontent.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/main/smart.sh | sh
or
wget -qO- https://disk.lol/verify-and-run.sh | sh
or
wget -qO- https://raw.githubusercontent.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/main/verify-and-run.sh | sh

Windows:
https://github.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/tree/main/windows
```

***❓ What are requirements to run the scripts?***
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
```
|⚙️ Script|#️⃣ Hash|
|---|--:|
smart.sh|165a81577b6237d09796e543d0a3a712
smart-test.sh|6bc155992975d2a50046d0ad2cb6b7c4
verify-and-run.sh|4f702243fb8e486982abf6f38d143780


***✅ Virus check:***
100 % Clean source code - "No security vendors flagged this URL as malicious"

|⚙️ Script or Site|📄 Url to verify|
|---|--:|
disk.lol|https://www.virustotal.com/gui/url/ed36c768c961b2e7d62b1560fb3eeb0ce8267a73dc1f24ebb46e4619c0f3dc71
disk.lol/smart.sh|https://www.virustotal.com/gui/url/b8911829e94fd0b1347e1405484bc7c227249fe2968e7ecb473929775596abcc
disk.lol/smart-test.sh|https://www.virustotal.com/gui/url/6c84dfd510d55eb21360b28876a73740e96e41abad99a692ea3f1aa996fa6940
disk.lol/verify-and-run.sh|https://www.virustotal.com/gui/url/c6402b85a9753e3c988870ee2d54019453e0ad41afcd773f0052158034fa3f29
github raw smart.sh|https://www.virustotal.com/gui/url/e1b74e82688c8190e9192c4699cbe6b9cc23c16b35fa49579918b0129ed82e75
github raw smart-test.sh|https://www.virustotal.com/gui/url/f6110301df8cd009d04392e0a6aa04cce32857c8e8a51d5e851c10a029b08027
github raw verify-and-run.sh|https://www.virustotal.com/gui/url/be6524676e2e8251f74db150e371b9db3d87a708fd7692eb715a221f5246eb5f
github raw README.md| https://www.virustotal.com/gui/url/62ae953bfb4c531fdcb7d268369ac610ade6a46209b84c153a54877dc18d018c
github raw windows README.md|https://www.virustotal.com/gui/url/11097db574e0716a6df2dea9434b4ba0834a961d72864cb8b769b92ba7a75318

***🛸 Optimized page speed:***
|⚙️ Service|📄 Url to test|🌍 Tested from|🚀 Speed
|---|---|---|--:|
Pingdom|https://tools.pingdom.com/#604f5f0edd400000|DE|435ms
GTmetrix|https://gtmetrix.com/reports/disk.lol/csVVp3H5/|UK|194ms
PageSpeed|https://pagespeed.web.dev/report?url=https%3A%2F%2Fdisk.lol%2F&form_factor=desktop|?|200ms

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

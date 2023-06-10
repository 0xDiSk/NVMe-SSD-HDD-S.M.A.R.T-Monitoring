#!/bin/sh
hash="d300e269f1c9b6df241ac14d3d5e9954"
disk="wget -qO- https://diskcheck.monster/"
hash_github="d300e269f1c9b6df241ac14d3d5e9954"
disk_github="wget -qO- https://raw.githubusercontent.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/main/README.md"

if [ ! -e "/usr/bin/wget" ]; then
echo "[#ERROR] To verify the script hashes you will need to install wget."
echo "[#INFO] Exiting script now."
exit
fi

if test -z "$($disk | grep -h $hash)" || test -z "$($disk_github | grep -h $hash_github)"; then
echo "Error: Verification of script failed - update your script."
echo "Please download manually smart.sh script - https://diskcheck.monster/smart.sh"
else
echo "Verification of script was successful."
if [ -f "smart.sh" ]; then
echo "Now will run script smart.sh"
sh smart.sh
else
echo "Error: script smart.sh missing."
echo "Please download manually smart.sh script (file must be named as smart.sh) - https://diskcheck.monster/smart.sh"
fi
fi

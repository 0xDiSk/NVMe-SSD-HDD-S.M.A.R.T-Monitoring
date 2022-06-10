#!/bin/sh
hash="6f13a4451a197739153fd804629f60b5"
disk="wget -qO- https://diskcheck.co/"
hash_github="6f13a4451a197739153fd804629f60b5"
disk_github="wget -qO- https://raw.githubusercontent.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/main/README.md"

if [ ! -e "/usr/bin/wget" ]; then
echo "[#ERROR] To verify the script hashes you will need to install wget."
echo "[#INFO] Exiting script now."
exit
fi

if test -z "$($disk | grep -h $hash)" || test -z "$($disk_github | grep -h $hash_github)"; then
echo "Error: Verification of script failed - update your script."
echo "Please download manually smart.sh script - https://diskcheck.co/smart.sh"
else
echo "Verification of script was successful."
if [ -f "smart.sh" ]; then
echo "Now will run script smart.sh"
sh smart.sh
else
echo "Error: script smart.sh missing."
echo "Please download manually smart.sh script (file must be named as smart.sh) - https://diskcheck.co/smart.sh"
fi
fi

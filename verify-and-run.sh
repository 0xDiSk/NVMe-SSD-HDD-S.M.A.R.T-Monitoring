#!/bin/sh
hash="af6dbd082d7bca2a7cfb9e7d2fce420a"
disk="wget -qO- https://diskcheck.co/"
hash_github="af6dbd082d7bca2a7cfb9e7d2fce420a"
disk_github="wget -qO- https://raw.githubusercontent.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/main/README.md"

if [ -f /etc/redhat-release ]; then
release="centos"
elif cat /etc/issue | grep -Eqi "debian"; then
release="debian"
elif cat /etc/issue | grep -Eqi "ubuntu"; then
release="ubuntu"
elif cat /etc/issue | grep -Eqi "centos|red hat|redhat"; then
release="centos"
elif cat /proc/version | grep -Eqi "debian"; then
release="debian"
elif cat /proc/version | grep -Eqi "ubuntu"; then
release="ubuntu"
elif cat /proc/version | grep -Eqi "centos|red hat|redhat"; then
release="centos"
fi

if  [ ! -e '/usr/bin/wget' ]; then
echo " Installing wget ..."
if [ "${release}" == "centos" ]; then
yum -y install wget > /dev/null 2>&1
else
apt-get -y install wget > /dev/null 2>&1
fi
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

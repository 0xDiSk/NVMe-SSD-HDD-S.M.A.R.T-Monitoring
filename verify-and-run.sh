#!/bin/sh
hash="9731ec566206e62d945ada6365444ac0"
disk="wget -qO- https://disk.lol/"

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

if test -z "$($disk | grep -h $hash)"; then
echo "Error: Verification of script failed - update your script."
echo "Please download manually smart.sh script - https://disk.lol/smart.sh"
else
echo "Verification of script was successful."
if [ -f "smart.sh" ]; then
echo "Now will run script smart.sh"
sh smart.sh
else
echo "Error: script smart.sh missing."
echo "Please download manually smart.sh script (file must be named as smart.sh) - https://disk.lol/smart.sh"
fi
fi

#!/bin/sh
hash="9731ec566206e62d945ada6365444ac0"
disk="wget -qO- https://disk.lol/"

if  [ ! -e '/usr/bin/wget' ]; then
echo " Installing wget ..."
if [ "${release}" == "centos" ]; then
yum -y install wget > /dev/null 2>&1
else
apt-get -y install wget > /dev/null 2>&1
fi
fi

if test -z "$($disk | grep -h $hash)"; then
echo "Verification of script failed. Please update your script."
echo "wget https://disk.lol/smart.sh"
else
echo "Verification of script was successful. Now will run smart.sh"
sh smart.sh
fi

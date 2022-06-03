#!/bin/bash
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

if  [ ! -e '/usr/bin/curl' ]; then
if [ "${release}" == "centos" ]; then
while true; do
read -p "Do you wish to install curl? [Yes/No]" yn
case $yn in
[Yy]* ) echo " Installing curl ..."; yum -y install curl > /dev/null 2>&1; break;;
[Nn]* ) exit;;
* ) echo "Please answer yes or no.";;
esac
done
else
while true; do
read -p "Do you wish to install this curl? [Yes/No]" yn
case $yn in
[Yy]* ) echo " Installing curl ..."; apt-get -y install curl > /dev/null 2>&1; break;;
[Nn]* ) exit;;
* ) echo "Please answer yes or no.";;
esac
done
fi
fi

if  [ ! -e '/usr/sbin/smartctl' ]; then
if [ "${release}" == "centos" ]; then
while true; do
read -p "Do you wish to install smartmontools - smartctl? [Yes/No]" yn
case $yn in
[Yy]* ) echo " Installing smartmontools - smartctl ..."; yum -y install curl > /dev/null 2>&1; break;;
[Nn]* ) exit;;
* ) echo "Please answer yes or no.";;
esac
done
else
while true; do
read -p "Do you wish to install this smartmontools - smartctl? [Yes/No]" yn
case $yn in
[Yy]* ) echo " Installing smartmontools - smartctl ..."; apt-get -y install curl > /dev/null 2>&1; break;;
[Nn]* ) exit;;
* ) echo "Please answer yes or no.";;
esac
done
fi
fi

for disk in $(smartctl --scan|cut -d ' ' -f1) ; do
smart=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1)
smartctl -a $disk -v 1,raw24/raw32 -v 7,raw24/raw32 > $smart
if egrep "ServeRAID|MegaRaid" $smart
then
smartctl --scan|cut -d '#' -f1|cut -d "," -f2| cut -d " " -f1 > megaraid.txt
for N in $(cat megaraid.txt) ; do
echo "Generating S.M.A.R.T for disk (MegaRaid): " $disk,$N
smartctl -a -v 1,raw24/raw32 -v 7,raw24/raw32 -d megaraid,$N $disk > $smart
curl -F smart=@$smart https://disk.lol/api?disk=$disk.$N
rm $smart
done
rm megaraid.txt
else
echo "Generating S.M.A.R.T for disk: " $disk
curl -F smart=@$smart https://disk.lol/api?disk=$disk
fi
rm $smart
done

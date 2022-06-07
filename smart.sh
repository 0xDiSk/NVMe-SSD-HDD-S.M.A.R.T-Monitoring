#!/bin/sh
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
echo " Installing curl ..."
if [ "${release}" == "centos" ]; then
yum -y install curl > /dev/null 2>&1
else
apt-get -y install curl > /dev/null 2>&1
fi
fi

if  [ ! -e '/usr/sbin/smartctl' ]; then
echo " Installing smartmontools - smartctl..."
if [ "${release}" == "centos" ]; then
yum -y install smartmontools > /dev/null 2>&1
else
apt-get -y install smartmontools > /dev/null 2>&1
fi
fi

for disk in $(smartctl --scan|cut -d ' ' -f1) ; do
smart=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1)
smartctl -a $disk -v 1,raw24/raw32 -v 7,raw24/raw32 > $smart
serialnumber=$(cat $smart | grep "Serial" | head -n 1 | awk '{print $3}')
sed -i "s/$serialnumber/Hidden/g" $smart
if egrep "ServeRAID|MegaRaid" $smart
then
smartctl --scan|cut -d '#' -f1|cut -d "," -f2| cut -d " " -f1 > megaraid.txt
for N in $(cat megaraid.txt) ; do
echo "Generating S.M.A.R.T for disk (MegaRaid): " $disk,$N
smartctl -a -v 1,raw24/raw32 -v 7,raw24/raw32 -d megaraid,$N $disk > $smart
serialnumber=$(cat $smart | grep "Serial" | head -n 1 | awk '{print $3}')
sed -i "s/$serialnumber/Hidden/g" $smart
curl -F smart=@$smart https://diskcheck.co/api?disk=$disk.$N
rm $smart
done
rm megaraid.txt
else
echo "Generating S.M.A.R.T for disk: " $disk
curl -F smart=@$smart https://diskcheck.co/api?disk=$disk
fi
rm $smart
done

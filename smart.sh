#!/bin/sh

if [ ! -e "/usr/bin/curl" ] || [ ! -e "/usr/sbin/smartctl" ]; then
echo "[#ERROR] To run the S.M.A.R.T for your disk you will need to install smartmontool.\n"
echo "[#ERROR] To send the S.M.A.R.T data to our api you will need to install curl.\n"
echo "[#INFO] Exiting script now."
exit
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

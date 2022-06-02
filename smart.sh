#!/bin/sh
for disk in $(smartctl --scan|cut -d ' ' -f1) ; do
echo "Generating S.M.A.R.T for disk: " $disk
smart=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1)
smartctl -a $disk -v 1,raw24/raw32 -v 7,raw24/raw32 > $smart
curl -F smart=@$smart https://disk.lol/api?disk=$disk
rm $smart
done

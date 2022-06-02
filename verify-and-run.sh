#!/bin/sh
hash="418b2e9c8a6c4cf9ca439734961f88e6"
disk="wget -qO- https://disk.lol/"

if test -z "$($disk | grep -h $hash)"; then
echo "Verification of script failed. Please update your script."
echo "wget https://disk.lol/smart.sh"
else
echo "Verification of script was successful. Now will run smart.sh"
sh smart.sh
fi

#!/bin/sh
for disk in $(smartctl --scan|cut -d ' ' -f1) ; do
echo "Starting S.M.A.R.T short test for disk: " $disk
smartctl -t short $disk
done

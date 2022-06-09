#!/bin/sh
#https://github.com/0xDiSk/NVMe-SSD-HDD-S.M.A.R.T-Monitoring/wiki/Build-smartmontools-(smartctl)-from-source.

apt-get -y install automake
git clone https://github.com/smartmontools/smartmontools.git
cd smartmontools/smartmontools
./autogen.sh
./configure --with-nvme-devicescan
make
sudo make install

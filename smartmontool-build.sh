#!/bin/sh
apt install automake
git clone https://github.com/smartmontools/smartmontools.git
cd smartmontools/smartmontools
./autogen.sh
./configure --with-nvme-devicescan
make
sudo make install

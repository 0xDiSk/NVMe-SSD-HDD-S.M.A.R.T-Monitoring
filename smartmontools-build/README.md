⚙️ You can build smartmontools (smartctl) from source by running these commands:

```
apt-get -y install automake
git clone https://github.com/smartmontools/smartmontools.git
cd smartmontools/smartmontools
./autogen.sh
./configure --with-nvme-devicescan
make
sudo make install
```

❓ How to verify smartctl is installed?

```
➡️ Run command:
which smartctl

💡 Output:
/usr/local/sbin/smartctl

➡️ Run command:
/usr/local/sbin/smartctl -v
or
smartctl -v

💡 Output:
smartctl pre-7.4 (build date Jun  9 2022) [x86_64-linux-5.4.0-81-generic] (local build)
```

✅ Done :)

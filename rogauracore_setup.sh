#! /bin/sh

cd ~/
### Install dependancies.
sudo apt install libusb-1.0-0 libusb-1.0-0-dev
sudo apt install build-essential
sudo apt install autoconf

### clone repository 
git clone https://github.com/wroberts/rogauracore.git
cd rogauracore
autoreconf -i
./configure

### and install
make
sudo make install
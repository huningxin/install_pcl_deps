#!/bin/bash -e
sudo apt-get update

sudo apt-get install libflann-dev libvtk5-dev libboost-all-dev libusb-1.0-0-dev libqhull-dev libpcap0.8-dev

wget http://www.coin-or.org/download/source/metslib/metslib-0.5.3.tgz
tar zxvf metslib-0.5.3.tgz
cd metslib-0.5.3/
./configure
make -j9
sudo make install
cd ..

hg clone https://bitbucket.org/eigen/eigen/
cd eigen
hg up 3.1.4
mkdir builddir
cd builddir
cmake ../
sudo make install
cd ../..
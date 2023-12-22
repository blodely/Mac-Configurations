#!/bin/bash
# Created by Luo Yu

echo "Check headers"
sudo apt-get install linux-headers-$(uname -r)
distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')

echo "Download CUDA keyring"
wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-keyring_1.0-1_all.deb
sudo dpkg -i cuda-keyring_1.0-1_all.deb

echo "Install CUDA drivers"
sudo apt-get update
sudo apt-get -y install cuda-drivers

echo "Reboot to apply driver"
sudo reboot


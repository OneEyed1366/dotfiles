sudo apt-get autoremove virtualbox-dkms -y
sudo apt-get install build-essential linux-headers-`uname -r` dkms virtualbox-dkms -y
sudo modprobe vboxdrv
sudo modprobe vboxnetflt

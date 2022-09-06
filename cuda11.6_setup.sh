#! /bin/sh

# Created: Sept 5 2022
# Author: Gokul Hari

PWD=`pwd`
echo " Install dependancies ... "
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y build-essential cmake unzip pkg-config
sudo apt-get install -y libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev
sudo apt-get install -y libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libxvidcore-dev libx264-dev
sudo apt-get install -y libgtk-3-dev
sudo apt-get install -y libopenblas-dev libatlas-base-dev liblapack-dev gfortran
sudo apt-get install -y libhdf5-serial-dev graphviz
sudo apt-get install -y python3-dev python3-tk python-imaging-tk
sudo apt-get install -y linux-image-generic linux-image-extra-virtual
sudo apt-get install -y linux-source linux-headers-generic

echo " Creating tmp directory to store run file"
mkdir ~/tmp_cuda_install_dir
cd ~/tmp_cuda_install_dir

echo " wget and install"
wget https://developer.download.nvidia.com/compute/cuda/11.6.0/local_installers/cuda_11.6.0_510.39.01_linux.run
chmod +x cuda_11.6.0_510.39.01_linux.run
sudo sh cuda_11.6.0_510.39.01_linux.run

echo "Adding path variables in ~/.bashrc"
echo 'export PATH="/usr/local/cuda-11.6/bin:$PATH"' >>$(~/.bashrc)
echo 'export LD_LIBRARY_PATH="/usr/local/cuda-11.6/lib64:$LD_LIBRARY_PATH"' >>$(~/.bashrc)

echo " Cleaning up tmp directory."
cd $PWD
sudo rm -rf ~/tmp_cuda_install_dir

echo "Install cudnn: \n
Download cudnn tar file from: \n
https://developer.nvidia.com/compute/cudnn/secure/8.5.0/local_installers/11.7/cudnn-linux-x86_64-8.5.0.96_cuda11-archive.tar.xz 

For other versions visit: https://developer.nvidia.com/rdp/cudnn-download
You might have to login to your nvidia account to download the files.

Once downloaded, copy the file cudnn-linux-x86_64-8.5.0.96_cuda11-archive.tar.xz from the downloaded path to this code repository 

Run ./cudnn_setup.sh
"

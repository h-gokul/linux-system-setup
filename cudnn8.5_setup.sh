#! /bin/sh

# Created: Sept 5 2022
# Author: Gokul Hari

echo "unzipping.."
tar -xvf cudnn-linux-x86_64-8.5.0.96_cuda11-archive.tar.xz

echo "Copying... cudnn header files >> cuda directory"
sudo cp cudnn-*-archive/include/cudnn*.h /usr/local/cuda/include
sudo cp -P cudnn-*-archive/lib/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn*.h /usr/local/cuda/lib64/libcudnn*

echo "
Clean up...

To delete the tar file:
sudo rm -rf cudnn-linux-x86_64-8.5.0.96_cuda11-archive.tar.xz 
To delete the extracted folder:
sudo rm -rf cudnn-linux-x86_64-8.5.0.96_cuda11-archive
"

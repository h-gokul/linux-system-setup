# Linux-System-setup
- References for setting up my ubuntu OS

# Create linux/windows live USB.
- Clear any partition in the USB drive using the Disks tool in Linux. Also note down device name of usb drive. (say, `/dev/sda`)
- Download the latest release of [WoeUSB](https://github.com/WoeUSB/WoeUSB/releases/) 
- Download .iso file from windows website.
- run   ```sudo ./woeusb-5.2.4.bash -d <Win10.iso> <device name>``` 

Example:
```
sudo ./woeusb-5.2.4.bash -d Win10_21H2_English_x64.iso /dev/sda
```
------------------------------------------

# Install Linux
Follow the steps in the link to dual boot install linux.
https://opensource.com/article/18/5/dual-boot-linux

------------------------------------------
# Install CUDA, CUDNN, Pytorch etc

#### Quick Tutorials:
- To install [cuda11](https://medium.com/analytics-vidhya/install-cuda-11-2-cudnn-8-1-0-and-python-3-9-on-rtx3090-for-deep-learning-fcf96c95f7a1)
- To install [cuda-9.0](https://gist.github.com/Brainiarc7/470a57e5c9fc9ab9f9c4e042d5941a40)
- For CMSC733 (we need tf-1.13), set up nvidia driver + cuda 10.0 + cudnn 7.6  [using this](https://itectec.com/ubuntu/ubuntu-install-nvidia-drivers-with-cuda-10-0-ubuntu-18-04-and-tensorflow-gpu-1-13/)

## CUDA installation:
NOTE: This tutorial could be specific to cuda 11.6 installation. modify file paths and versions accordingly.
Usually, the nvidia driver is already installed in case of Ubuntu. Check `Additional Drivers` in `Software & Updates` if NVIDIA drivers are selected.  

- Download the cuda tool-kit from the [nvidia website]([https://developer.nvidia.com/search?page=1&sort=relevance&term=cuda%20toolkit](https://developer.nvidia.com/cuda-toolkit-archive))
- run `uname -m` to check architecture version of your PC. 
- Select your linux distribution and version and download the runfile.

Example: 
```
wget https://developer.download.nvidia.com/compute/cuda/11.6.0/local_installers/cuda_11.6.0_510.39.01_linux.run
sudo sh cuda_11.6.0_510.39.01_linux.run
```
This should install cuda successfully. 

### Verify Cuda Installation: 
Run `nvcc -V` to check the version of cuda. If nvcc is not installed, you might have not added the path variables in  `~/.bashrc`. 

Recall that, at the end of cuda installation, there must be a message saying 
Please make sure that
 -   PATH includes /usr/local/cuda-11.6/bin
 -   LD_LIBRARY_PATH includes /usr/local/cuda-11.6/lib64, or, add /usr/local/cuda-11.6/lib64 to /etc/ld.so.conf and run ldconfig as root

Add the PATH variables as [referred here](https://askubuntu.com/questions/885610/nvcc-version-command-says-nvcc-is-not-installed).
ie, add the below lines.
```
 export PATH="/usr/local/cuda-11.6/bin:$PATH"
 export LD_LIBRARY_PATH="/usr/local/cuda-11.6/lib64:$LD_LIBRARY_PATH"
```
now nvcc-V should display something like this:

```
nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2021 NVIDIA Corporation
Built on Fri_Dec_17_18:16:03_PST_2021
Cuda compilation tools, release 11.6, V11.6.55
Build cuda_11.6.r11.6/compiler.30794723_0
```

- To uninstall the CUDA Toolkit, run cuda-uninstaller in `/usr/local/cuda-11.6/bin`


### CUDNN installation.
obtained from nvidia website

In the following sections:
- your CUDA directory path is referred to as /usr/local/cuda/
- your cuDNN download path is referred to as <cudnnpath>

### 1) Tar File Installation

  Before issuing the following commands, you'll need to replace X.Y and v8.x.x.x with your specific CUDA and cuDNN versions and package date.
Procedure
- Navigate to your <cudnnpath> directory containing the cuDNN tar file.
- Unzip the cuDNN package.
$ tar -xvf cudnn-linux-x86_64-8.x.x.x_cudaX.Y-archive.tar.xz $
Copy the following files into the CUDA toolkit directory.
  
  
```
 sudo cp cudnn-*-archive/include/cudnn*.h /usr/local/cuda/include 
```
  
```
sudo cp -P cudnn-*-archive/lib/libcudnn* /usr/local/cuda/lib64 
```

```
sudo chmod a+r /usr/local/cuda/include/cudnn*.h /usr/local/cuda/lib64/libcudnn*
```
  
#### 2) Verify Cuda Installation
Refer: https://xcat-docs.readthedocs.io/en/stable/advanced/gpu/nvidia/verify_cuda_install.html

#### 3) Testing cudnn installation
refer this: https://askubuntu.com/questions/1215087/testing-cudnn-7-6-5-install-on-ubuntu-18-04
  
  
------------------------------------------
 NOTE: [To Learn about python paths](https://leemendelowitz.github.io/blog/how-does-python-find-packages.html) 
  
------------------------------------------
# Jupyterlab

To install  properly, do this:

`sudo -H pip3 install jupyterlab`

add jupyter lab path to ENVIRONMENT as follows
- Type
`gedit ~/.bashrc`

this opens the  `~/.bashrc`
Now, add this to the last line
`PATH=$PATH:/home/gokul/.local/bin/jupyter-lab`
Note: gokul is the username. change accordingly

------------------------------------------
# Install Linux themes and icons

- Install gnome-tweaks tool from software updater

https://askubuntu.com/questions/213697/how-can-i-install-gtk-themes-on-ubuntu

### For themes,
- download the theme, unzip it
run the command to copy the themes folder
`sudo cp <theme> ./usr/share/themes`

### For icons,
- download the icons, unzip it
run the command to copy the themes folder
`sudo cp <theme> ./usr/share/icons`

Suggested:  
Mcata theme: https://www.gnome-look.org/p/1381832/
Yaru icons : https://www.gnome-look.org/p/1331947/
------------------------------------------

# Backlight Keyboard
To install rogauracore to control backlight in linux:

https://github.com/wroberts/rogauracore
------------------------------------------

# Connect to UMD Eduroam 
For linux, download run file from this link
https://cloud.securew2.com/public/76190/Get_connected_to_eduroam/

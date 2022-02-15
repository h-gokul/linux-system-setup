# Linux-System-setup

References for setting up my ubuntu OS

# Install Linux
https://opensource.com/article/18/5/dual-boot-linux

# Install CUDA, CUDNN, Pytorch etc

to install [cuda11](https://medium.com/analytics-vidhya/install-cuda-11-2-cudnn-8-1-0-and-python-3-9-on-rtx3090-for-deep-learning-fcf96c95f7a1)

To install [cuda-9.0](https://gist.github.com/Brainiarc7/470a57e5c9fc9ab9f9c4e042d5941a40)

For CMSC733 (we need tf-1.13), set up nvidia driver + cuda 10.0 + cudnn 7.6  [using this](https://itectec.com/ubuntu/ubuntu-install-nvidia-drivers-with-cuda-10-0-ubuntu-18-04-and-tensorflow-gpu-1-13/)


## General instructions to install CUDNN
obtained from nvidia website


In the following sections:
- your CUDA directory path is referred to as /usr/local/cuda/
- your cuDNN download path is referred to as <cudnnpath>

### Tar File Installation

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
  
#### Testing cudnn installation
refer this: https://askubuntu.com/questions/1215087/testing-cudnn-7-6-5-install-on-ubuntu-18-04
  
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





## Install themes and icons

- Install gnome-tweaks tool from software updater

https://askubuntu.com/questions/213697/how-can-i-install-gtk-themes-on-ubuntu

For themes,
- download the theme, unzip it
run the command to copy the themes folder
`sudo cp <theme> ./usr/share/themes`

For icons,
- download the icons, unzip it
run the command to copy the themes folder
`sudo cp <theme> ./usr/share/icons`

Suggested:  
Mcata theme: https://www.gnome-look.org/p/1381832/
Yaru icons : https://www.gnome-look.org/p/1331947/

# Backlight Keyboard
To install rogauracore to control backlight in linux:

https://github.com/wroberts/rogauracore

# Connect to Eduroam
For linux, download run file from this link
https://cloud.securew2.com/public/76190/Get_connected_to_eduroam/



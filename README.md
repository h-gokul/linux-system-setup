# system-setup

References for setting up my ubuntu OS

# Install Linux
https://opensource.com/article/18/5/dual-boot-linux

## Install CUDA, CUDNN, Pytorch etc
https://medium.com/analytics-vidhya/install-cuda-11-2-cudnn-8-1-0-and-python-3-9-on-rtx3090-for-deep-learning-fcf96c95f7a1

## install themes and icons

- Install gnome-tweaks tool from software updater

https://askubuntu.com/questions/213697/how-can-i-install-gtk-themes-on-ubuntu

- download the theme, unzip it
run the command to copy the themes folder
`sudo cp <theme> ./usr/share/themes`

For icons,
- download the theme, unzip it
run the command to copy the themes folder
`sudo cp <theme> ./usr/share/icons`


Suggested:  
Mcata theme: https://www.gnome-look.org/p/1381832/
Yaru icons : https://www.gnome-look.org/p/1331947/



# Set up nvidia driver + cuda 10.0 + cudnn 7.6 For CMSC733 (tf-1.13)
https://itectec.com/ubuntu/ubuntu-install-nvidia-drivers-with-cuda-10-0-ubuntu-18-04-and-tensorflow-gpu-1-13/

# To install jupyterlab properly, do this:

`sudo -H pip3 install jupyterlab`


add jupyter lab path to ENVIRONMENT as follows
- Type
`gedit ~/.bashrc`

this opens the  `~/.bashrc`
Now, add this to the last line
`PATH=$PATH:/home/gokul/.local/bin/jupyter-lab`
Note: gokul is the username. change accordingly


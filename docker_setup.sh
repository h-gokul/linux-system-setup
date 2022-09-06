#! /bin/sh

sudo apt update

echo "Setting up Docker"
echo "Docker-CE on Ubuntu is being setup using Docker’s official convenience script..."
curl https://get.docker.com | sh &&
    sudo systemctl --now enable docker

echo "Setting up Nvidia-container-toolkit"
distribution=$(
    . /etc/os-release
    echo $ID$VERSION_ID
) &&
    curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg &&
    curl -s -L https://nvidia.github.io/libnvidia-container/$distribution/libnvidia-container.list |
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' |
        sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

sudo apt-get update
sudo apt-get install -y nvidia-docker2

echo "Testing docker..."
sudo docker run --rm --gpus all nvidia/cuda:11.0.3-base-ubuntu20.04 nvidia-smi

echo "If nvidia-smi output showed up, Installation was a success."

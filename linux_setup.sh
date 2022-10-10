#! /bin/sh
PWD=$(pwd)


### Install cuda.
echo " Install cuda and cudnn first before this linux setup is run. dnn package dependancies installations would fail if cuda was not installed"
echo " If not installed already, run ./cuda11.6_setup.sh and follow steps."

echo "*** Installing VSCode ***"
# sudo snap install --classic code # or code-insiders

echo "*** Installing curl ***"
sudo apt install curl

echo "*** Installing requirments.txt ***"
pip3 install -r requirements.txt

echo "*** Installing pytorch ***"
pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
pip3 install pytorch3d

echo "*** Installing Ceres Solver ***"
chmod +x install_ceres.sh
sudo ./install_ceres.sh
cd $PWD

echo "*** Installing Eigen ***"
sudo apt update  # not necessary since Bionic
sudo apt-get install libeigen3-dev

echo "*** Installing GTSAM library ***"
# Add PPA
sudo add-apt-repository ppa:borglab/gtsam-release-4.0
sudo apt update  # not necessary since Bionic
# Install:
sudo apt install libgtsam-dev libgtsam-unstable-dev


echo "*** Installing docker, nvidia toolkit ***"
chmod +x docker_setup.sh
./docker_setup.sh
cd $PWD

echo "*** Installing ROGAuracore ***"
chmod +x rogauracore_setup.sh
./rogauracore_setup.sh
cd $PWD


echo "*** Installing Shutter snipping tool ***"
sudo add-apt-repository ppa:shutter/ppa
sudo apt install shutter
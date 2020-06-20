# GNOME extensions
sudo apt install gnome-shell-extensions
## Dash to Panel [manual enable on website]
## Extended Gestures [manual enable on website]

# Menu for copying filepath in Nautilus GUI
##https://github.com/ronen25/nautilus-copypath
sudo apt-get install python-nautilus python3-gi
git clone https://github.com/ronen25/nautilus-copypath
mkdir ~/.local/share/nautilus-python
mkdir ~/.local/share/nautilus-python/extensions
cd nautilus-copypath
cp nautilus-copypath.py ~/.local/share/nautilus-python/extensions/
nautilus -q && nautilus &

# For C++ dev
##libx11-dev
sudo apt-get install -y libx11-dev
 
# Matlab launcher
#sudo apt install matlab-support

#NVIDIA Cuda
#[Follow instructions at https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=1804&target_type=deblocal]
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo add-apt-repository "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/ /"
sudo apt-get update
sudo apt-get -y install cuda
## May need to do the following:
### sudo dpkg -i --force-all /var/cache/apt/archives/libnvidia-compute-450_450.36.06-0ubuntu1_amd64.deb
### sudo apt install libnvidia-compute-450 
sudo apt update
sudo apt upgrade

# Google Chrome
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb

# VSCode
sudo snap install --classic code

# VLC
sudo snap install vlc

# GIMP
sudo snap install gimp

# Blender
sudo snap install blender --classic

# GNOME extensions
sudo apt install gnome-shell-extensions
## Dash to Panel [manual enable on website]
## Extended Gestures [manual enable on website]

# Menu for copying filepath in Nautilus GUI
##https://github.com/ronen25/nautilus-copypath
sudo apt-get install python-nautilus python3-gi
git clone https://github.com/ronen25/nautilus-copypath
mkdir $HOME/.local/share/nautilus-python
mkdir $HOME/.local/share/nautilus-python/extensions
cd nautilus-copypath
cp nautilus-copypath.py $HOME/.local/share/nautilus-python/extensions/
nautilus -q && nautilus &

# For C++ dev
## libx11-dev
sudo apt-get install -y libx11-dev
## libpng
sudo apt-get install libpng-dev
 
# Matlab launcher
#sudo apt install matlab-support

# Google Chrome
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb

# Dropbox
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb
sudo dpkg -i download?dl=packages%2Fubuntu%2Fdropbox_2020.03.04_amd64.deb

# VSCode
sudo snap install --classic code

# VLC
sudo snap install vlc

# GIMP
sudo snap install gimp

# Blender
sudo snap install blender --classic

# Github authentication
ssh-keygen -t rsa -b 4096 -C [INSERT GITHUB EMAIL HERE]
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
## Then add to GitHub SSH keys list
## Test with:
ssh -T git@github.com

# FFMPEG
sudo apt-get install libgtk-3-dev
sudo apt-get install libavcodec-dev libavformat-dev libavutil-dev libswscale-dev
sudo apt  install ffmpeg

# NPM
sudo apt install curl
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install npm

# Visual feedback for password characters
## https://vitux.com/how-to-make-password-asterisks-visible-in-ubuntu-terminal/

# Armadillo C++ library
sudo apt install libopenblas-dev
sudo apt install libpack-dev
sudo apt install libarpack2-dev
sudo apt install libsuperlu-dev
sudo apt install libarmadillo-dev

# OpenGL
#sudo apt install libglew-dev



# ImageMagick
sudo apt-get install build-essential
wget https://www.imagemagick.org/download/ImageMagick.tar.gz
tar xvzf ImageMagick.tar.gz
cd ImageMagick-7.0.10-22
./configure 
make
sudo make install 
sudo ldconfig /usr/local/lib
## Test with:
magick -version


# Docker engine
#https://docs.docker.com/engine/install/ubuntu/

# Nvidia Docker
#https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker


# Easy keyboard shortcuts (Config in ~/.xbindkeysrc)
sudo apt-get install xbindkeys
xbindkeys --defualts > $HOME/.xbindkeysrc

# CLion
sudo snap install clion --classic

# Spotify
snap install spotify

# Jekyll
sudo apt-get install ruby-full build-essential zlib1g-dev
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
gem install jekyll bundler




# Make Programs directory
cd $HOME
mkdir Programs && cd Programs

# OpenCV
# (from source)
# Install minimal prerequisites (Ubuntu 18.04 as reference)
mkdir OpenCV && cd OpenCV
sudo apt update && sudo apt install -y cmake g++ wget unzip
# Download and unpack sources
wget -O opencv.zip https://github.com/opencv/opencv/archive/master.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/master.zip
unzip opencv.zip
unzip opencv_contrib.zip
# Create build directory and switch into it
mkdir -p build && cd build
# Configure
# cmake -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib-master/modules ../opencv-master
cmake -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib-master/modules -DWITH_GTK=ON -DWITH_GTK_2_X=ON -DWITH_FFMPEG=1 ../opencv-master
# Build
cmake --build .

# CUDA 11.2
cd $HOME/Programs
wget https://developer.download.nvidia.com/compute/cuda/11.2.2/local_installers/cuda_11.2.2_460.32.03_linux.run
sudo sh cuda_11.2.2_460.32.03_linux.run
# UNCHECK THE DRIVER INSTALL. Need to manually select a TESTED proprietary driver from "Additional drivers" first

# sudo nano ~/.bashrc
### Add the following at the end of `~/.bashrc`
# export PATH=/usr/local/cuda-11.2/bin${PATH:+:${PATH}}
# export LD_LIBRARY_PATH=/usr/local/cuda-11.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# export CUDA_HOME=/usr/local/cuda 

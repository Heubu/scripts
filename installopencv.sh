#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade

# Build tools:
sudo apt-get install -y build-essential cmake 

# GUI 
sudo apt-get install -y qt5-default libvtk6-dev

# Media:
sudo apt-get install -y zlib1g-dev libjpeg-dev libwebp-dev libpng-dev libtiff5-dev libjasper-dev libopenexr-dev libgdal-dev

# Video:
#sudo apt-get install -y libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev yasm libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev libxine2-dev

# Parallelism and linear algebra libraries:
sudo apt-get install -y libtbb-dev libeigen3-dev

# Python:
sudo apt-get install -y python-dev python-tk python-numpy python3-dev python3-tk python3-numpy python-opencv

# Documentation:
#sudo apt-get install -y doxygen

#Download opencv to home/<USERNAME>/Downloads/
cd /Downloads

#OpenCV
wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.2.0.zip
unzip opencv.zip

#OpenCV-modules
wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.2.0.zip
unzip opencv_contrib.zip

#Build & install OpenCV --> replace: OPENCV_EXTRA_MODULES_PATH="/home/<USERNAME>/Downloads/opencv-contrib-3.2.0/modules/ ..
cd opencv-3.2.0/
mkdir build
cd build/
cmake -D WITH_TBB=ON -D INSTALL_C_EXAMPLES=ON -D WITH_EIGEN=OFF -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D OPENCV_EXTRA_MODULES_PATH=/home/<USERNAME>/Downloads/opencv_contrib-3.2.0/modules/ ..
make
sudo make install







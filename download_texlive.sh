#!/bin/sh
cd ../
wget -c http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
mkdir texlive
tar -zxf install-tl-unx.tar.gz -C ./texlive --strip-components=1
cd texlive
cp $TRAVIS_BUILD_DIR/.nmc.profile ./nmc.profile
sudo ./install-tl -profile nmc.profile
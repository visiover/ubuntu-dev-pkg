#!/bin/sh


# MacBuntu OS Y theme for Ubuntu 16.10
# http://www.noobslab.com/2016/11/macbuntu-1610-transformation-pack-for.html

echo "\n Installing MacBuntu Theme"
echo "***********************************************"

# Add macbuntu repository
sudo add-apt-repository ppa:noobslab/macbuntu -y


echo "\n Updating packages lists"
echo "***********************************************"
sudo apt-get update -y

# Icons
echo "\n Installing macbuntu icons"
echo "***********************************************"
sudo apt-get install macbuntu-os-icons-lts-v8 -y

# Cursors
echo "\n Installing macbuntu Cursors"
echo "***********************************************"
sudo apt-get install macbuntu-os-ithemes-lts-v8 -y

# Slingscold Launcher
echo "\n Installing Slingscold Launcher"
echo "***********************************************"
sudo apt-get install slingscold -y

# Albert Spotlight
echo "\n Installing Albert Spotlight"
echo "***********************************************"
sudo apt-get install albert -y

# Plank Dock
echo "\n Installing Plank Dock"
echo "***********************************************"
sudo apt-get install plank -y

# Plank themes
echo "\n Installing Plank Theme"
echo "***********************************************"
sudo apt-get install macbuntu-os-plank-theme-lts-v8 -y


# Tweak tools
echo "\n Installing Tweak Tools"
echo "***********************************************"
sudo apt-get install gnome-tweak-tool -y


# Libre office Monochrome icons
echo "\n Installing Monochrome icons"
echo "***********************************************"
sudo apt-get install libreoffice-style-sifr -y


# Mac Fonts 
echo "\n Installing MacOs fonts"
echo "***********************************************"
wget -O mac-fonts.zip http://drive.noobslab.com/data/Mac/macfonts.zip

sudo unzip mac-fonts.zip -d /usr/share/fonts; rm mac-fonts.zip


sudo fc-cache -f -v
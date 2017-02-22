#!/bin/sh



echo "\n\n** Installing my packages **"
sleep 1  # Waits 2 seconds.

echo "\n\n***********************************************"
echo "\t Updating to latest package lists"
echo "***********************************************"
sudo apt-get update -y # get the latest package lists

sudo add-apt-repository ppa:gerardpuig/ppa -y # ubuntu cleaner
sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor -y
sudo apt-get update

sudo apt-get --assume-yes install vim
sudo apt-get --assume-yes install gnome-do
sudo apt-get --assume-yes install virtualbox
sudo apt-get --assume-yes install htop
sudo apt-get --assume-yes install ubuntu-cleaner
sudo apt-get --assume-yes install gimp
sudo apt-get --assume-yes install vlc
sudo apt-get --assume-yes install filezilla
sudo apt-get --assume-yes install gtk-recordmydesktop
sudo apt-get --assume-yes install redshift redshift-gtk
sudo apt-get --assume-yes install terminator
sudo apt-get --assume-yes install sublime-text-installer
sudo apt-get --assume-yes install indicator-sysmonitor
sudo apt-get --assume-yes install synaptic
sudo apt-get --assume-yes install gnome-themes-standard
sudo apt-get --assume-yes install network-manager-openconnect network-manager-openconnect-gnome


#spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get --assume-yes install spotify-client


check()
{

 dpkg -s "$1" >/dev/null 2>&1 && {
        echo "[✓]  $1"
    } || {
       echo "[x]  $1 not installed"
    }
}

echo "\n* Installed packages verification"
echo "**************************************"
check gnome-do
check virtualbox
check ubuntu-cleaner
check gimp
check vlc
check filezilla
check gtk-recordmydesktop
check redshift
check terminator
check sublime-text-installer
check indicator-sysmonitor
check synaptic
check spotify-client

echo "\n"

#!/bin/sh



echo "\n\n** Installing my packages **"
sleep 1  # Waits 2 seconds.

echo "\n\n***********************************************"
echo "\t Updating to latest package lists"
echo "***********************************************"
sudo apt-get update -y # To get the latest package lists


sudo apt-get install vim
sudo apt-get install gnome-do
sudo apt-get install virtualbox
sudo apt-get install htop



#ubuntu cleaner
sudo add-apt-repository ppa:gerardpuig/ppa
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor
sudo apt-get update

sudo apt-get install ubuntu-cleaner
sudo apt-get install gimp
sudo apt-get install vlc
sudo apt-get install filezilla
sudo apt-get install gtk-recordmydesktop
sudo apt-get install redshift redshift-gtk
sudo apt-get install terminator
sudo apt-get install sublime-text-installer
sudo apt-get install indicator-sysmonitor
sudo apt-get install synaptic
sudo apt-get install gnome-themes-standard
sudo apt-get install network-manager-openconnect network-manager-openconnect-gnome


#spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client


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

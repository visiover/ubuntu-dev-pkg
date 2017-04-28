#!/bin/sh

#TODO: Check if xCode command line tools are installed
xcode-select --install


# Check if homebrew is installed and up to date
if ! type "brew" > /dev/null; then
    #install homebrew
	echo "\n==> Installing Homebrew...\n"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "\nHomebrew installation found\nUpdating Homebrew "
	# Make sure we’re using the latest Homebrew.
	brew update
	# Upgrade
	brew upgrade
fi



# Verify Homebrew is installed and working properly
brew doctor

# Add Homebrew completions
brew tap homebrew/completions


# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen


echo "Cleaning up Homebrew cache ..."
brew cleanup

#TODO : check if cask is installed and these command lines are correct
echo "\n==> Installing Homebrew cask...\n" 
brew tap caskroom/cask
brew tap caskroom/versions


CASKS=(
    sublime-text
    istat-menus
    google-chrome
    google-drive
    firefox
    skype
    vlc
    utorrent
    spotify
    dropbox
    unrarx
    the-unarchiver
    spectacle
    appcleaner
    iterm2
    teamviewer
    phpstorm
    libreoffice
    filezilla
    skype
    google-drive
    slack
    unity
    android-file-transfer
    wireshark
    marp
    ccleaner
)

#install all the needed apps
echo "\n==> Installing all the needed packages\n"
brew cask install ${CASKS[@]}


# Some apps don't have a cask and so still need to be installed by hand. These include:
    #memory clean 2
    #uTorrent
    #Duplicate detective
    #Stellar Phoenix Mac Data Recovery 
    #Traktor DJ
    #Microsoft Office
    #Guidance

#install some fonts
echo "Installing fonts..."
brew tap caskroom/fonts

FONTS=(
    font-inconsolidata
    font-roboto
    font-clear-sans
)

brew cask install ${FONTS[@]}

# cleanup cask cache
brew cask cleanup

# TODO: Write tests
# TODO: Check if the packages have been successfully installed

#brew cask info pkg-name
brew cask list
echo "\n\n==> All the packages have been installed :)  \n\n"

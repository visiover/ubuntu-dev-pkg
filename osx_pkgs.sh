#!/bin/sh

# Install xCode command line tool
xcode-select --install


#check if homebrew is installed and is latest
if ! type "brew" > /dev/null; then
    #install homebrew
	echo "\n==> Installing Homebrew...\n"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "\nHomebrew installation found\nUpdating Homebrew "
	# Make sure we’re using the latest Homebrew.
	brew update
	# Upgrade any already-installed formulae.
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


echo "Cleaning up..."
brew cleanup

#install cask
echo "\n==> Installing cask...\n" 
brew install caskroom/cask/brew-cask


CASKS=(
    google-chrome
    skype
    vlc
    spotify
    dropbox
    the-unarchiver
    spectacle
    appcleaner
    iterm2
    teamviewer
    phpstorm
    libreoffice
    filezilla
    skype
    google-dive
    little-snitch
    slack
    unity
)

#install all the needed apps
echo "\n==> Installing all the needed packages\n"
brew cask install ${CASKS[@]}


# Some apps don't have a cask and so still need to be installed by hand. These include:
#Sublime 2
#memory clean 2
#uTorrent
#Duplicate detective
#Stellar Phoenix Mac Data Recovery 
#Traktor DJ
#Microsoft Office
#Guidance


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

echo "\n\n==> All the packages have been installed :)  \n\n"
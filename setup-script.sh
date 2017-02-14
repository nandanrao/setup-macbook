# Get password
sudo -v

####################################
# Mac Setup
defaults write com.apple.finder AppleShowAllFiles YES
sudo nvram SystemAudioVolume=" "

# Menu bar: hide the Time Machine, Volume, and User icons
for domain in ~/Library/Preferences/ByHost/com.apple.systemuiserver.*; do
	defaults write "${domain}" dontAutoLoad -array \
		"/System/Library/CoreServices/Menu Extras/TimeMachine.menu" \
		"/System/Library/CoreServices/Menu Extras/Volume.menu" \
		"/System/Library/CoreServices/Menu Extras/User.menu"
done
defaults write com.apple.systemuiserver menuExtras -array \
	"/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \
	"/System/Library/CoreServices/Menu Extras/AirPort.menu" \
	"/System/Library/CoreServices/Menu Extras/Battery.menu" \
	"/System/Library/CoreServices/Menu Extras/Clock.menu"

# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName


# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null


# Finder: disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true



###################################
# Install ZSH / ZIM

###################################
# CLI Tools
brew install tree
brew install the_silver_searcher
brew install gnu-sed --with-default-names
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install coreutils
brew install findutils
brew install imagemagick --with-webp
brew install gdal
brew install geos
brew install proj
brew install hub
###################################
# Node
# Install nvm-zsh and nvm install latest versions


#####################################
# Python
# brew install python, brew doctor, which python until it works
brew install zmq

###################################
# Languages 

brew cask install java
brew install leiningen
brew install scala
brew install sbt
brew install R
brew install cairo

# Frameworks...
brew install apache-spark

# Needed for pdf-tools emacs plugin
brew install poppler automake

# fonts!
brew tap caskroom/fonts
brew cask install font-source-code-pro

# Latex
# After installing you need to navigate to /usr/local/Caskroom/basictex
# and install the dmg and then:
# sudo tlmgr install scheme-full 
brew cask install basictex

# Geo Shit
brew install spatialindex

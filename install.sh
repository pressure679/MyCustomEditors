sudo rm /etc/apt/sources.list
cd /etc/apt
sudo wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/sources.list
# fingerprint key for f.lux indicator applet from https://launchpad.net/~kilian/+archive/ubuntu/f.lux
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E602B5DDEA4951FB628E7BD4FAEB83059BD4ED25
# fingerprint key for tlp power management software from https://launchpad.net/~linrunner/+archive/ubuntu/tlp
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 2042F03C5FABD0BA2CED40412B3F92F902D65EFF
# fingerprint key for fixed rtl8723be driver from https://launchpad.net/~hanipouspilot/+archive/ubuntu/rtlwifi
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A31B1FE775FD7643D79B75107036069A2F22E44A
# fingerprint key for Google Chrome Browser
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4CCA1EAF950CEE4AB83976DCA040830F7FAC5991
# fingerprint key for Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install vim emacs24 git mercurial irssi build-essential make cmake automake w3m python-dev linux-firmware gccgo-4.9 ctags thinkfan tor tlp thinkfan google-chrome-stable indicator-cpufreq cpufrequtils lm-sensors vlc audacious picard mopidy psensors gocode spotify-client
cd $HOME
mkdir $HOME/.vim
chmod $USER $HOME/.vim
mkdir $HOME/.vim/bundle
cd /home/$USER/.vim
git clone https://github.com/VundleVim/Vundle.vim
mkdir $HOME/.emacs.d | chmod $USER $HOME/.emacs.d
cd $HOME
wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/.emacs
wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/.vimrc
mkdir $HOME/.irssi
cd $HOME/.irssi
wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/irssiconfig
mv irssiconfig config
mkdir scripts/autorun
cd scripts/autorun
wget https://raw.githubusercontent.com/irssi/scripts.irssi.org/gh-pages/scripts/nickcolor.pl
mk default.theme
echo abstracts = { >> default.theme
echo   sb_background = \"%n\"; >> default.theme
echo } >> default.theme
mkdir $HOME/go
mkdir $HOME/go/wikiproj
cd $HOME/go/wikiproj
wget https://raw.githubusercontent.com/pressure679/WikiPagerankDB/master/sample.go

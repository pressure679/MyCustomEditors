# apt and fingerprint key for f.lux indicator applet from https://launchpad.net/~kilian/+archive/ubuntu/f.lux
sudo add-apt-repository ppa:kilian/f.lux
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E602B5DDEA4951FB628E7BD4FAEB83059BD4ED25
# apt and fingerprint key for tlp power management software from https://launchpad.net/~linrunner/+archive/ubuntu/tlp
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 2042F03C5FABD0BA2CED40412B3F92F902D65EFF
# apt and fingerprint key for fixed rtl8723be driver from https://launchpad.net/~hanipouspilot/+archive/ubuntu/rtlwifi
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A31B1FE775FD7643D79B75107036069A2F22E44A
# apt and fingerprint key for Google Chrome Browser
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4CCA1EAF950CEE4AB83976DCA040830F7FAC5991
# apt and fingerprint key for Spotify
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free" 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install emacs git mercurial irssi build-essential make cmake automake w3m python-dev linux-firmware gccgo-4.9 ctags tor tlp google-chrome-stable indicator-cpufreq cpufrequtils lm-sensors vlc audacious picard psensors gocode spotify-client htop openssh fluxgui

mkdir $HOME/.emacs.d | chmod $USER $HOME/.emacs.d
cd $HOME
wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/.emacs

mkdir $HOME/.irssi
cd $HOME/.irssi
wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/irssiconfig
mv irssiconfig config
mkdir scripts/autorun
cd scripts/autorun
wget https://raw.githubusercontent.com/irssi/scripts.irssi.org/gh-pages/scripts/nickcolor.pl
echo "abstracts = {" >> default.theme
echo "  sb_background = \"%n\";" >> default.theme
echo } >> default.theme

mkdir $HOME/go
mkdir $HOME/go/wikiproj
cd $HOME/go/wikiproj

echo 0 | sudo tee /sys/class/graphics/fbcon/cursor_blink

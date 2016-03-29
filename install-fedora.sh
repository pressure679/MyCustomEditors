sudo dnf update
sudo dnf upgrade
sudo dnf install emacs git mercurial irssi build-essential make cmake automake w3m python-dev ctags tlp google-chrome-stable vlc audacious htop openssh-server python-pip youtube-dl terminator samba system-config-samba xclip golang

mkdir ~/.emacs.d
wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/.emacs

mkdir ~/.irssi
cd ~/.irssi
wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/irssiconfig
mv irssiconfig config
touch default.theme
echo "abstracts = {" >> default.theme
echo "  sb_background = \"%n\";" >> default.theme
echo } >> default.theme
mkdir scripts
mkdir scripts/autorun
cd scripts/autorun
wget https://raw.githubusercontent.com/irssi/scripts.irssi.org/gh-pages/scripts/nickcolor.pl
mkdir ~/go
mkdir ~/go/wikiproj
cd ~/go/wikiproj
git clone 

echo 0 | sudo tee /sys/class/graphics/fbcon/cursor_blink

sudo dnf update
sudo dnf upgrade
sudo dnf install emacs git mercurial irssi build-essential make cmake automake w3m python-dev ctags tlp google-chrome-stable vlc audacious htop openssh-server python-pip youtube-dl terminator samba system-config-samba xclip golang taglib-devel gimp

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
wget https://raw.githubusercontent.com/pressure679/WikiPagerankDB/master/sample.go
cd ~/Downloads
wget https://justgetflux.com/linux/xflux64.tgz
sudo tar -xvzf xflux64.tgz -O /usr/bin
sudo chmod +x /usr/bin/xflux
cd ~/go
mkdir id3go
cd id3go
wget https://raw.githubusercontent.com/pressure679/MP3ID3Tagger/master/sample.go
sudo wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/environment -O /etc
go get github.com/dustin/go-wikiparse
go get github.com/pressure679/dijkstra
go get github.com/wtolson/go-taglib

echo 0 | sudo tee /sys/class/graphics/fbcon/cursor_blink

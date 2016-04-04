# apt and fingerprint key for f.lux indicator applet from https://launchpad.net/~kilian/+archive/ubuntu/f.lux
# sudo add-apt-repository ppa:kilian/f.lux
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E602B5DDEA4951FB628E7BD4FAEB83059BD4ED25
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

sudo wget https://yt-dl.org/downloads/2016.03.27/youtube-dl -O /usr/bin/youtube-dl
sudo chown /usr/bin/youtube-dl
sudo chmod +x /usr/bin/youtube-dl
sudo apt-get update
# sudo apt-get upgrade
sudo apt-get install emacs git mercurial irssi make cmake automake w3m ctags tlp google-chrome-stable lm-sensors vlc audacious spotify-client htop openssh-server python-pip youtube-dl mp3gain synaptic terminator samba system-config-samba gufw xclip libtagc0-dev

sudo pip install livestreamer livestreamer-curses

sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo apt-get update
sudo echo "deb http://dk.archive.ubuntu.com/ubuntu/ wily main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo "deb-src http://dk.archive.ubuntu.com/ubuntu/ wily main restricted universe multiverse" >> /etc/apt/sources.list
sudo apt-get install ffmpeg
sudo rm /etc/apt/sources.list
sudo mv /etc/apt/sources.list.bak /etc/apt/sources.list
sudo apt-get update

cd ~/Downloads
wget https://justgetflux.com/linux/xflux64.tgz
sudo tar -C /usr/bin -xf xflux64.tgz
sudo chown root /usr/bin/xflux

wget https://storage.googleapis.com/golang/go1.5.3.linux-amd64.tar.gz
sudo tar -C /usr/share -xzf go1.5.3.linux-amd64.tar.gz
sudo chown root /usr/share/go -R
sudo rm /etc/environment
wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/environment -O /etc

export GOPATH=$HOME/go
export GOROOT=/usr/share/go
go get github.com/dustin/go-wikiparse
go get github.com/alixaxel/pagerank
go get github.com/smallsmallwolf/dijkstra
go get github.com/wtolson/go-taglib
go get github.com/sjwhitworth/golearn
cd $GOPATH/github.com/sjwhitworth/golearn
go get ./...

cd $HOME/Downloads
wget http://www.pagruli.esy.es/files/themes/gtk/Ambiance-Green-Pro.tar.gz
sudo tar -C /usr/share/themes -xf Ambiance-Green-Pro.tar.gz
sudo chown root /usr/share/themes/Ambiance-Green-Pro -R

sudo wget http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-258269.jpg -O /usr/share/backdrops
sudo wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/lightdm-gtk-greeter.conf -O /etc/lightdm
sudo chown root /etc/lightdm/lightdm-gtk-greeter.conf

mkdir $HOME/.emacs.d | chmod $USER $HOME/.emacs.d
cd $HOME
wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/.emacs

mkdir $HOME/.irssi
cd $HOME/.irssi
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

mkdir $HOME/go; mkdir $HOME/go/wikiproj; cd $HOME/go/wikiproj
wget https://raw.githubusercontent.com/pressure679/WikiPagerankDB/master/sample.go

cd ..

cd $HOME/go/id3go
wget https://raw.githubusercontent.com/pressure679/MP3ID3Tagger/master/sample.go
go build sample.go

cd $HOME
mkdir .w3m
cd .w3m
wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/bookmark.html

cd $HOME
rm .bashrc
wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/.bashrc
wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/.emacs
git clone https://github.com/pressure679/go-mode

# remember to configure tlp and enable programs that are to autostart (go doc, emacs server and xflux)
# also, you probably have to update emacs packages

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

sudo apt-get update
# sudo apt-get upgrade
sudo apt-get install emacs git mercurial irssi make cmake automake w3m ctags tlp lm-sensors vlc audacious spotify-client htop openssh-server python-pip youtube-dl mp3gain synaptic terminator samba system-config-samba gufw xclip libtagc0-dev golang-go.tools

wget https://yt-dl.org/downloads/2016.03.27/youtube-dl
mkdir /usr/share/youtube-dl
mkdir /usr/share/youtube-dl/bin
sudo mv youtube-dl /usr/share/youtube-dl/bin/youtube-dl
sudo chown root /usr/share/youtube-dl/bin/youtube-dl
sudo chmod +x /usr/share/youtube-dl/bin/youtube-dl
sudo ln -s /usr/share/youtube-dl/bin/youtube-dl /usr/bin

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
sudo mkdir /usr/share/xflux
sudo tar -C /usr/share/xflux -xf xflux64.tgz
sudo chown root /usr/share/xflux/xflux
sudo ln -s /usr/share/xflux/xflux /usr/bin

wget https://storage.googleapis.com/golang/go1.5.3.linux-amd64.tar.gz
sudo tar -C /usr/share -xzf go1.5.3.linux-amd64.tar.gz
sudo chown root /usr/share/go -R

sudo rm /etc/environment
wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/environment
sudo mv environment /etc
sudo chown root /etc/environment

export GOPATH=$HOME/go
export GOROOT=/usr/share/go
go get github.com/dustin/go-wikiparse
go get github.com/alixaxel/pagerank
go get github.com/smallsmallwolf/dijkstra
go get github.com/wtolson/go-taglib
go get github.com/sjwhitworth/golearn
cd $GOPATH/src/github.com/sjwhitworth/golearn
go get ./...

cd $HOME/Downloads
wget https://drive.google.com/file/d/0B7iDWdwgu9QAZTI2YXNZSUJ4Y00/Ambiance-Blackout-Flat-Colors-16-04-1-LTS-GTK-3-18-Theme.tar.gz
sudo tar -C /usr/share/themes -xf *Ambiance*.tar.gz
sudo chown root /usr/share/themes/Ambiance* -R

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

mkdir $HOME/go/id3go
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

cd ~/.emacs.d/
mkdir elpa
cd elpa

mkdir auto-complete
wget https://melpa.org/packages/auto-complete-20160329.2321.tar
tar -xf autocomplete*.tar
mv autocomplete-*/ auto-complete

mkdir centered-cursor-mode
wget https://melpa.org/packages/centered-cursor-mode-20151001.634.el
cp centered-*.el centered-cursor-mode/centered-cursor-mode.el
rm centered-*.el

mkdir dash
wget https://melpa.org/packages/dash-20160306.1222.el
cp dash-*.el dash/dash.el
rm dash-*.el

mkdir erc-better-scroll
wget https://raw.githubusercontent.com/Denommus/emacs-config/master/erc-better-scroll.el
cp erc-better-scroll.el erc-better-scroll/

mkdir erc-hl-nicks
wget https://melpa.org/packages/erc-hl-nicks-20160202.1150.el
cp erc-hl-nicks-*.el erc-hl-nicks/erc-hl-nicks.el
rm erc-hl-nicks-*.el

wget https://melpa.org/packages/evil-20160406.252.tar
tar -xf evil*.tar
mv evil-* evil

mkdir evil-escape
wget https://melpa.org/packages/evil-escape-20160313.1205.el
cp evil-escape*.el evil-escape/evil-escape.el
rm evil-escape*.el

mkdir flymake-go
wget https://melpa.org/packages/flymake-go-20150714.33.el
cp flymake-go*.el flymake-go/flymake-go.el
rm flymake-go*.el

mkdir flymake-cursor
wget https://melpa.org/packages/flymake-cursor-20130822.332.el
cp flymake-cursor*.el flymake-cursor/flymake-cursor.el
rm flymake-cursor*.el

mkdir go-autocomplete
wget https://melpa.org/packages/go-autocomplete-20150903.1940.el
cp go-autocomplete*.el go-autocomplete/go-autocomplete.el
rm go-autocomplete*.el

wget https://melpa.org/packages/go-mode-20160404.2.tar
tar -xf go-mode*.tar
mv go-mode-*.tar $HOME/Downloads
mv go-mode-* go-mode

mkdir goto-chg
wget https://melpa.org/packages/goto-chg-20131228.659.el
cp goto-chg*.el goto-chg/goto-chg.el
rm goto-chg*.el

mkdir hlinum
wget https://melpa.org/packages/hlinum-20150621.1933.el
cp hlinum*.el hlinum/hlinum.el
rm hlinum*.el

mkdir popup
wget https://melpa.org/packages/popup-20151222.1339.el
cp popup*.el popup/popup.el
rm popup*.el

wget https://melpa.org/packages/yasnippet-20160408.1558.tar
tar -xf yasnippet*.tar
mv yasnippet-* yasnippet

mkdir undo-tree
wget https://melpa.org/packages/undo-tree-20140509.522.el
cp undo-tree-*.el undo-tree/undo-tree.el
rm undo-tree-*.el

mkdir themes
wget https://melpa.org/packages/cyberpunk-theme-20160121.1712.el
cp cyberpunk-theme-*.el themes/cyberpunk-theme.el
rm cyberpunk-theme-*.el

wget https://melpa.org/packages/gruvbox-theme-20151227.113.el
cp gruvbox-theme-*.el themes/gruvbox-theme.el
rm gruvbox-theme-*.el

wget https://melpa.org/packages/solarized-theme-20160408.1143.tar
tar -xf solarized*.tar
mv solarized-*/* themes/

mv *.tar $HOME/Downloads
rmdir solarized-*


# remember to configure tlp and enable programs that are to autostart (go doc, emacs server and xflux)
# also, you probably have to update emacs packages

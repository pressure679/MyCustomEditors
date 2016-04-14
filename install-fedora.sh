sudo rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm
sudo dnf upgrade
sudo dnf install git mercurial irssi cmake automake w3m ctags tlp lm_sensors audacious htop youtube-dl synaptic terminator samba system-config-samba xclip taglib-devel golang golang-godoc emacs audacious-plugins-freeworld vlc community-mysql-server xfce4-volumed

sudo pip install livestreamer livestreamer-curses

cd ~/Downloads
wget https://justgetflux.com/linux/xflux64.tgz
sudo mkdir /usr/share/xflux
sudo tar -C /usr/share/xflux -xf xflux64.tgz
sudo chown root /usr/share/xflux/xflux
sudo ln -s /usr/share/xflux/xflux /usr/bin

# sudo rm /etc/environment
# wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/environment
# sudo mv environment /etc
# sudo chown root /etc/environment
sudo touch /etc/profile.d/environment.sh
echo "GOPATH=$HOME/go\nGOROOT=/usr/lib/golang" | sudo tee /etc/profile.d/environment.sh

export GOPATH=$HOME/go
export GOROOT=/usr/lib/golang
go get github.com/dustin/go-wikiparse
go get github.com/alixaxel/pagerank
go get github.com/pressure679/dijkstra
go get github.com/wtolson/go-taglib
go get github.com/sjwhitworth/golearn
go get github.com/Masterminds/squirrel
go get github.com/nsf/gocode
cd $GOPATH/src/github.com/sjwhitworth/golearn
go get ./...
cd $GOPATH/bin
chmod +x gocode
sudo chown root gocode
sudo mv gocode /usr/lib/golang/bin
sudo ln -s /usr/lib/golang/bin/gocode /usr/bin

# cd $HOME/Downloads
# https://drive.google.com/file/d/0B7iDWdwgu9QAZTI2YXNZSUJ4Y00/Ambiance-Blackout-Flat-Colors-16-04-1-LTS-GTK-3-18-Theme.tar.gz
# sudo tar -C /usr/share/themes -xf *Ambiance*.tar.gz
# sudo chown root /usr/share/themes/Ambiance* -R

# sudo wget http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-258269.jpg
# sudo cp wallhaven*.jpg /usr/share/xfce4/backdrops
# sudo cp wallhaven*.jpg /usr/share/backgrounds/

# wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/lightdm-gtk-greeter.conf
# sudo chown root lightdm-gtk-greeter.conf
# sudo rm /etc/lightdm/lightdm-gtk-greeter.conf
# sudo mv lightdm-gtk-greeter.conf /etc/lightdm

mkdir $HOME/.emacs.d | chmod $USER $HOME/.emacs.d
cd $HOME
wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/.emacs

# mkdir $HOME/.irssi
# cd $HOME/.irssi
# wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/irssiconfig
# mv irssiconfig config
# touch default.theme
# echo "abstracts = {" >> default.theme
# echo "  sb_background = \"%n\";" >> default.theme
# echo } >> default.theme
# mkdir scripts
# mkdir scripts/autorun
# cd scripts/autorun
# wget https://raw.githubusercontent.com/irssi/scripts.irssi.org/gh-pages/scripts/nickcolor.pl

# mkdir $HOME/go; mkdir $HOME/go/wikiproj; cd $HOME/go/wikiproj
# wget https://raw.githubusercontent.com/pressure679/WikiPagerankDB/master/sample.go

# mkdir $HOME/go/id3go
# cd $HOME/go/id3go
# wget https://raw.githubusercontent.com/pressure679/MP3ID3Tagger/master/sample.go
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

# cd ~/.emacs.d/
# mkdir elpa
# cd elpa

# mkdir auto-complete
# wget https://melpa.org/packages/auto-complete-20160329.2321.tar
# tar -xf autocomplete*.tar
# mv autocomplete-*/ auto-complete

# mkdir centered-cursor-mode
# # wget https://melpa.org/packages/centered-cursor-mode-20151001.634.el
# cp centered-*.el centered-cursor-mode/centered-cursor-mode.el
# rm centered-*.el

# mkdir dash
# wget https://melpa.org/packages/dash-20160306.1222.el
# cp dash-*.el dash/dash.el
# rm dash-*.el

# mkdir erc-better-scroll
# wget https://raw.githubusercontent.com/Denommus/emacs-config/master/erc-better-scroll.el
# cp erc-better-scroll.el erc-better-scroll/
# rm erc-better-scroll.el

# mkdir erc-hl-nicks
# wget https://melpa.org/packages/erc-hl-nicks-20160202.1150.el
# cp erc-hl-nicks-*.el erc-hl-nicks/erc-hl-nicks.el
# rm erc-hl-nicks-*.el

# wget https://melpa.org/packages/evil-20160406.252.tar
# tar -xf evil*.tar
# mv evil-* evil

# mkdir evil-escape
# wget https://melpa.org/packages/evil-escape-20160313.1205.el
# cp evil-escape*.el evil-escape/evil-escape.el
# rm evil-escape*.el

# mkdir flymake-go
# wget https://melpa.org/packages/flymake-go-20150714.33.el
# cp flymake-go*.el flymake-go/flymake-go.el
# rm flymake-go*.el

# mkdir flymake-cursor
# wget https://melpa.org/packages/flymake-cursor-20130822.332.el
# cp flymake-cursor*.el flymake-cursor/flymake-cursor.el
# rm flymake-cursor*.el

# mkdir go-autocomplete
# wget https://melpa.org/packages/go-autocomplete-20150903.1940.el
# cp go-autocomplete*.el go-autocomplete/go-autocomplete.el
# rm go-autocomplete*.el

# wget https://melpa.org/packages/go-mode-20160404.2.tar
# tar -xf go-mode*.tar
# mv go-mode-*.tar $HOME/Downloads
# mv go-mode-* go-mode

# mkdir goto-chg
# wget https://melpa.org/packages/goto-chg-20131228.659.el
# cp goto-chg*.el goto-chg/goto-chg.el
# rm goto-chg*.el

# mkdir hlinum
# wget https://melpa.org/packages/hlinum-20150621.1933.el
# cp hlinum*.el hlinum/hlinum.el
# rm hlinum*.el

# mkdir popup
# wget https://melpa.org/packages/popup-20151222.1339.el
# cp popup*.el popup/popup.el
# rm popup*.el

# wget https://melpa.org/packages/yasnippet-20160408.1558.tar
# tar -xf yasnippet*.tar
# mv yasnippet-* yasnippet

# mkdir undo-tree
# wget https://melpa.org/packages/undo-tree-20140509.522.el
# cp undo-tree-*.el undo-tree/undo-tree.el
# rm undo-tree-*.el

# mkdir themes
# wget https://melpa.org/packages/cyberpunk-theme-20160121.1712.el
# cp cyberpunk-theme-*.el themes/cyberpunk-theme.el
# rm cyberpunk-theme-*.el

# wget https://melpa.org/packages/gruvbox-theme-20151227.113.el
# cp gruvbox-theme-*.el themes/gruvbox-theme.el
# rm gruvbox-theme-*.el

# wget https://melpa.org/packages/solarized-theme-20160408.1143.tar
# tar -xf solarized*.tar
# mv solarized-*/* themes/

# mv *.tar $HOME/Downloads
# rmdir solarized-*

# remember to configure tlp and enable programs that are to autostart (go doc, emacs server and xflux)
# also, you probably have to update emacs packages

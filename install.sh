sudo rm /etc/apt/sources.list
cd /etc/apt
sudo wget https://raw.githubusercontent.com/pressure679/UbuntuEtcSetup/master/sources.list
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install vim emacs24 git mercurial irssi build-essential make cmake automake w3m libpcap0.8-dev python-dev linux-firmware
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

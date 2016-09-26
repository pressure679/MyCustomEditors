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
rm erc-better-scroll.el

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
# cp gruvbox-theme-*.el themes/gruvbox-theme.el
rm gruvbox-theme-*.el

wget https://melpa.org/packages/solarized-theme-20160408.1143.tar
tar -xf solarized*.tar
mv solarized-*/* themes/

mv *.tar $HOME/Downloads
rmdir solarized-*

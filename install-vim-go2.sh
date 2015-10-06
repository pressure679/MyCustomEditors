cd $GOPATH/bin
mv errcheck $GOROOT/bin
mv gocode $GOROOT/bin
mv goimports $GOROOT/bin
mv gometalinter $GOROOT/bin
mv gotags $GOROOT/bin
mv godef $GOROOT/bin
mv gofm $GOROOT/bin
mv golint $GOROOT/bin
mv gorename $GOROOT/bin
mv oracle $GOROOT/bin
cd $HOME/.vim/bundle/YouCompleteMe
sudo apt-get install python-dev cmake build-essential
python install.py --gocode-completer

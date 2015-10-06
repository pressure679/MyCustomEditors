# after running this file do :PluginInstall in vim and :GoInstallBinaries, after that  install-vim-go2.sh
echo "filetype off
set rtp +=~/.vim/bundle/Vundle.vim
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
call vundle#end()
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_autosave = 0

let g:UltiSnipsExpandTrigger=\"<C-k>\"
let g:UltiSnipsJumpForwardTrigger=\"<C-l>\"
let g:UltiSnipsJumpBackwardTrigger=\"<C-j>\"
filetype plugin on" >> .vimrc

cd .vim
mkdir bundle
cd bundle
git clone https://github.com/VundleVim/Vundle.vim
git clone https://github.com/fatih/vim-go
git clone https://github.com/Valloric/YouCompleteMe
git clone https://github.com/majutsushi/tagbar
git clone https://github.com/SirVer/ultisnips
git clone https://github.com/garyburd/go-explorer

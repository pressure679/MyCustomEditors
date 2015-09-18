filetype off
set rtp +=~/.vim/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nsf/gocode'
Plugin 'SirVer/ultisnips'
Plugin 'Shougo/echodoc.vim'
Plugin 'garyburd/go-explorer'
call vundle#end()

let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_autosave = 0

let g:UltiSnipsExpandTrigger="<C-k>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"
let g:echodoc_enable_at_startup = 1

set completeopt-=preview
set cmdheight=2
set autoindent
set expandtab
set guicursor+=a:blinkon0
set hlsearch
set ignorecase
set incsearch
set number
set shiftwidth=2
"set showcmd"
set showmatch
set smarttab
set smartcase
set softtabstop=2
set wildmenu
set wildmode=list:longest,full

set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set undodir=~/.vim/undo/

compiler gcc

se t_Co=256
"colorscheme grb256
"colorscheme distinguished
"colorscheme vividchalk
"colorscheme matrix
"colorscheme monokai
colorscheme gruvbox
"colorscheme solarized

syntax enable
syntax on
hi LineNr ctermbg=none
hi LineNr cterm=none
hi Normal ctermbg=none
hi Normal ctermfg=none
hi NonText ctermbg=none
hi NonText ctermfg=none
hi Folded ctermbg=none
hi Folded cterm=none
hi Folded ctermfg=none
hi Comment ctermfg=DarkGreen
hi Comment ctermbg=none
hi Comment cterm=none
hi Constant ctermbg=none
hi Constant cterm=none
hi Special ctermbg=none
hi Special cterm=none
hi Cursor ctermbg=none
hi Cursor cterm=none
hi Search ctermbg=none
hi Search cterm=none
hi MatchParen ctermbg=none
hi Pmenu ctermfg=Green
hi Pmenu ctermbg=none
hi Pmenu cterm=none
hi Visual cterm=none
hi Function ctermfg=55

inoremap <F4> <Esc>
nmap <F3> :w! <CR>
nmap <F2> :wq! <CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> va}zf <CR>
nmap <F10> zo <CR>
set <m-a>=a
nmap <m-a> :w! <CR>
nmap <m-a><m-a> :wq! <CR>
set <m-q>=q
inoremap <m-q> <Esc>
nmap <m-q><m-q> :q! <CR>


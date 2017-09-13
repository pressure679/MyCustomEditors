filetype off
set rtp +=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
call vundle#end()

" execute pathogen#infect()
" Plug 'fatih/vim-go'
" Plug 'vim-colorschemes'
" Plug 'scrooloose/nerdtree'
" Plug 'majutsushi/tagbar'

" let g:go_highlight_operators = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_build_constraints = 1
" let g:go_fmt_autosave = 0

" let g:UltiSnipsExpandTrigger="<C-k>"
" let g:UltiSnipsJumpForwardTrigger="<C-l>"
" let g:UltiSnipsJumpBackwardTrigger="<C-j>"

" let g:tagbar_type_go = {
"   \ 'ctagstype': 'go',
"   \ 'kinds' : [
"     \'p:package',
"   \'f:function',
"   \'v:variables',
"   \'t:type',
"   \'c:const'
"   \]
" \}

set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set softtabstop=2
set cmdheight=2
set guicursor+=a:blinkon0
set hlsearch
set completeopt-=preview
set ignorecase
set incsearch
set number
set showmatch
set smartcase
set wildmenu
set wildmode=list:longest,full
set scrolloff=10
set list
set listchars=tab:\|\ 
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=1
set timeoutlen=1000 ttimeoutlen=0

set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set undodir=~/.vim/undo/

compiler gcc

se t_Co=256
"colorscheme grb256
"colorscheme distinguished
"colorscheme vividchalk
"colorscheme matrix
colorscheme molokai
"colorscheme gruvbox
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
hi Cursor ctermfg=none
hi Search ctermbg=none
hi Search cterm=none
hi MatchParen ctermbg=none
hi Pmenu ctermfg=Green
hi Pmenu ctermbg=none
hi Pmenu cterm=none
hi Visual cterm=none
hi Function ctermfg=none
hi MatchParen ctermfg=DarkGreen
hi VertSplit ctermbg=none
hi Statusline ctermbg=none
hi Visual ctermbg=none
hi Visual ctermfg=DarkGreen
hi guicursor ctermbg=Gray
hi Cursor ctermbg=Gray

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" Disable AutoComplPop.
" let g:acp_enableAtStartup = 0

" Use neocomplete.
" let g:neocomplete#enable_at_startup = 1

let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

set runtimepath+=~/.vim/bundle/vim-go/gosnippets/snippets/
set runtimepath+=~/.vim/bundle/vim-go/gosnippets/UltiSnips/

" use different snippets dir
" let g:UltiSnipsSnippetsDir='~/.vim/my-snippets/'
" let g:UltiSnipsSnippetDirectories=["my-snippets"]

"nmap <F2> :wq! <CR>
"nmap <F3> :w! <CR>
"nmap <F4> <Esc>
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
"nmap <F9> va}zf <CR>
"nmap <F10> zo <CR>
" set <m-a>=a
" nmap <m-a> :w! <CR>
" nmap <m-a><m-a> :wq! <CR>
" set <m-q>=q
" inoremap <m-q> <Esc>
nmap <m-m> <Esc>
"nmap <m-q><m-q> :q! <CR>
nmap <C-x><C-o> <C-Space>
filetype plugin on

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-scripts/gtags.vim'
Plugin 'multilobyte/gtags-cscope'
Plugin 't9md/vim-quickhl'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

autocmd FileType python set omnifunc=pythoncomplete#Complete

set nu
set encoding=utf-8
set fileencodings=utf-8,gb18030
set termencoding=utf-8
set hlsearch
set incsearch
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nobomb
set background=light
syntax enable

set cscopetag
set cscopeprg=’gtags-cscope’
let GtagsCscope_Auto_Load = 1
let GtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1

let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Show_One_File=1
let Tlist_File_Fold_Auto_Close=1

nmap <C-l> :Tlist<cr><cr>


"botright cwindow



nmap <C-m> <Plug>(quickhl-manual-this)

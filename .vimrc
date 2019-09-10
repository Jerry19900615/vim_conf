set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
nnoremap <F3> :NERDTreeToggle<CR>
let NERDTreeWinPos=1

" assuming you're using vim-plug: https://github.com/junegunn/vim-plug
Plugin 'ncm2/ncm2'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plugin 'ncm2/ncm2-go'

"Plugin 'myitcv/govim'
"govim
"autocmd FileType go nnoremap <buffer> <leader>d : <C-u>call GOVIMHover()<CR>
"autocmd FileType go nnoremap <buffer> <C-x> :GOVIMGoToPrevDef<CR>
"autocmd FileType go nnoremap <buffer> <leader>c :GOVIMQuickfixDiagnostics<CR>

Plugin 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

let g:go_fmt_command = "goimports"

autocmd FileType go nnoremap <buffer> <C-x> :GoDefPop<CR>

Plugin 'ctrlpvim/ctrlp.vim'

"ctrlp
nnoremap <leader>t :CtrlPBufTag<CR>
nnoremap <leader>b :CtrlPBuffer<CR>



Plugin 'joereynolds/gtags-scope'
Plugin 'ronakg/quickr-cscope.vim'

" gtags-cscope config
set cscopetag
set cscopeprg='gtags-cscope'
let GtagsCscope_Auto_Load = 1
let CtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1
"let GtagsCscope_Ignore_Case = 1


"
let g:quickr_cscope_program = "gtags-cscope"
let g:quickr_cscope_db_file = "GTAGS"


Plugin 'stefandtw/quickfix-reflector.vim'

"quickfix
set cscopequickfix=s-,c-,d-,i-,t-,e-,f-,g-
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>



Plugin 'jiangmiao/auto-pairs'
Plugin 'mbriggs/mark.vim'
Plugin 'mhinz/vim-grepper'
nmap <F2> :Grepper -cword<CR>

Plugin 'tpope/vim-fugitive'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'



Plugin 'pangloss/vim-javascript'
"
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"for html and css
Plugin 'mattn/emmet-vim' 
"
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_mode='n'    "only enable normal mode functions.



Plugin 'uarun/vim-protobuf'
"for v-lang
Plugin 'ollykel/v-vim'


Plugin 'python-mode/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"



syntax enable
set pyxversion=3
set nu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set encoding=utf-8
set fileencodings=utf-8,gb2312
set hlsearch
set incsearch
set showcmd
set scrolloff=3
set nocompatible
set nobackup
set nowritebackup
set noswapfile


set termguicolors

"set mouse=a


"
set autowrite
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>x :cclose<CR>
nnoremap <leader>w :copen<CR>


















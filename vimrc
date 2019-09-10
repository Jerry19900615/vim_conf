
call plug#begin('~/.vim/plugged')
"
" Make sure you use single quotes
"
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"   Plug 'junegunn/vim-easy-align'
"
" Any valid git URL is allowed
"   Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" Multiple Plug commands can be written in a single line using | separators
"   Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" On-demand loading
"   Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"   Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" Using a non-master branch
"   Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"   Plug 'fatih/vim-go', { 'tag': '*' }
"
" Plug options
"   Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" Plug outside ~/.vim/plugged with post-update hook
"   Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" Unmanaged plugin (manually installed and updated)
"   Plug '~/my-prototype-plugin'
"
" Initialize plugin system


Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
nnoremap <F3> :NERDTreeToggle<CR>
let NERDTreeWinPos=1


Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2-go'

"Plug 'myitcv/govim'
"govim
"autocmd FileType go nnoremap <buffer> <leader>d : <C-u>call GOVIMHover()<CR>
"autocmd FileType go nnoremap <buffer> <C-x> :GOVIMGoToPrevDef<CR>
"autocmd FileType go nnoremap <buffer> <leader>c :GOVIMQuickfixDiagnostics<CR>

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

let g:go_fmt_command = "goimports"

autocmd FileType go nnoremap <buffer> <C-x> :GoDefPop<CR>

Plug 'ctrlpvim/ctrlp.vim'

"ctrlp
nnoremap <leader>t :CtrlPBufTag<CR>
nnoremap <leader>b :CtrlPBuffer<CR>



Plug 'joereynolds/gtags-scope'
Plug 'ronakg/quickr-cscope.vim'

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


Plug 'stefandtw/quickfix-reflector.vim'

"quickfix
set cscopequickfix=s-,c-,d-,i-,t-,e-,f-,g-
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>



Plug 'jiangmiao/auto-pairs'
Plug 'mbriggs/mark.vim'
Plug 'mhinz/vim-grepper'
nmap <F2> :Grepper -cword<CR>

Plug 'tpope/vim-fugitive'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'



Plug 'pangloss/vim-javascript'
"
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"for html and css
Plug 'mattn/emmet-vim' 
"
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_mode='n'    "only enable normal mode functions.



Plug 'uarun/vim-protobuf'
"for v-lang
Plug 'ollykel/v-vim'


Plug 'python-mode/python-mode'


call plug#end()
"
" Then reload .vimrc and :PlugInstall to install plugins.

" Put your non-Plug stuff after this line
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


















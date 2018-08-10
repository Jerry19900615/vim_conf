
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4


set fileencodings=utf-8,gb2312
set encoding=utf-8
set termencoding=utf-8

"set hlsearch
set nu
set incsearch
"set hlsearch
set autoindent
set cindent

syntax enable

" gtags-cscope config
set cscopetag
set cscopeprg='gtags-cscope'


let GtagsCscope_Auto_Load = 1
let CtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1
"let GtagsCscope_Ignore_Case = 1

let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Show_One_File=1
let Tlist_File_Fold_Auto_Close=1

nmap <leader>a :Tlist<cr><C-w>h

nmap <leader>w  :cw 6<CR>
nmap <leader>x  :cclose<CR>
nmap <leader>b  :buffers<CR>

"quickfix 
set cscopequickfix=s-,c-,d-,i-,t-,e-,f-,g-
map <C-n> :cn<CR>
map <C-p> :cp<CR>

nmap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>:cw 6<CR> 
nmap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>:cw 6<CR>
nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>:cw 6<CR>
nmap <leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>:cw 6<CR>
nmap <leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>:cw 6<CR>
nmap <leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>:cw 6<CR>
nmap <leader>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:cw 6<CR>
nmap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>:cw 6<CR>



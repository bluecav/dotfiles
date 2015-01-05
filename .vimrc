syntax on
set nocompatible
set history=100
set nu
set ai
set nowrap
set expandtab
set shiftwidth=2
set softtabstop=2
set shiftwidth=2
"set smartindent
set noet
set scrolljump=5
set guifont=fixed
set guioptions+=b
set lines=40
set columns=120
set formatoptions+=r


" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

set history=1000
set directory=~/.vim/tmp/swap//   " swap files


map <F6> :set guifont=rom10.iso1<CR>
map <F8> :set guifont="timb14"<CR>
map <F9> :set guifont=fixed<CR>
map <S-F11> :prev<CR>
map <F11> :next<CR>
map <S-F10> :bprev<CR>
map <F10> :bnext<CR>
imap <C-j> <ESC>
cmap <C-j> <ESC>
nmap <C-j> <ESC>
map <F1> :set hlsearch!<CR>
map <F2> :exe '/\%' . line(".") . 'l.*'<CR>
map <F3> [I
map <F4> :set ignorecase!<CR>

command! VariableRefresh let @a=system("grep \"variable\" " . @% . " | sort -u") | :%s/\(#VARIABLE_START\)\_.\{-}\(#VARIABLE_END\)/\=submatch(1) . "
" . @a . "    " . submatch(2)/g

set foldmethod=marker
set foldmarker=VIM_FOLD_START,VIM_FOLD_STOP

set noeb vb t_vb=

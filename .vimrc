
"set runtimepath=~/vimrc/vim,~/vimrc/vim/after,\$VIMRUNTIME
"source ~/vimrc/vimrc
"helptags ~/vimrc/vim/doc

set nocompatible
filetype off
filetype plugin indent on

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

set cursorline
set cursorcolumn
set number
set hlsearch
set scrolloff=4
syntax enable
syntax on
colorscheme molokai
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

let mapleader=';'
Bundle "scrooloose/nerdtree"
nmap <F8> :NERDTree<cr>
nmap <F7> :NERDTreeClose<cr>

Bundle "The-NERD-Commenter"
Bundle "kien/ctrlp.vim"

Bundle "Lokaltog/vim-powerline"
set laststatus=2
set t_Co=256
let g:Powerline_symbols='fancy'
"set encoding=utf8

Bundle "vim-scripts/taglist.vim"
let Tlist_Show_Menu=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
nmap tl :Tlist<cr>

Bundle "fholgado/minibufexpl.vim"
let g:miniBufExplCycleArround=1
map <leader>n :MBEbn<cr>
map <leader>b :MBEbp<cr>

Bundle "syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

Bundle "pep8"
let g:syntastic_python_checkers=['pep8']

map <leader>s :w<cr>
map <leader>q :q<cr>
"Bundle "winmanager"
"let g:winManagerWindownLayout='FileExplorer|TagList'
autocmd filetype python map <buffer> <F6> :w<cr>:!python %<cr>
"ddpe to test environment.
map <leader>dt :!ddep test weixin-console<cr>
map <leader>tst :!ddep pre-released admin<cr>
map <leader>fp :!cd DuoBaoConsole/deploy && fab pre_release deploy<cr>

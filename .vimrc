set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/syntastic'

call vundle#end()            " required
filetype plugin indent on    " required

map <F5> :NERDTreeToggle<CR>
map <D-S-]> gt
map <D-S-[> gT
map <F9> :lnext<CR>
map <F7> :lprevious<CR>
map <F6> :1,$s/\t/  /g<CR>  

syntax enable
set laststatus=2
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/node_modules/*
set wildignore+=*/public_built/*
set number

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

set hlsearch
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

set smartcase
set cursorline

let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

colorscheme loogica

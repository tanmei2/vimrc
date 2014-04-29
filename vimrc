set shell=bash
source ~/.vim/.bundles.vim 

set fileencodings=utf-8,gb18030,gbk,gb2312,cp936,latin1
set encoding=utf-8

syntax enable

set incsearch
set hlsearch
set smartcase

set number
set laststatus=2

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set autoindent
set smartindent

let mapleader=";"
let maplocalleader=";"

" easymotion
let g:EasyMotion_leader_key =';'

" NERDTree
let NERDTreeWinPos="right"

" YouCompleteMe
let g:ycm_global_ycm_extra_conf="~/.vim/ycm_extra_conf.py"

nnoremap <F4> :Tbbd<cr>
nnoremap <F5> :NERDTreeToggle<cr>


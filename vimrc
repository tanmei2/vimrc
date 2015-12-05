set shell=zsh

set fileencodings=utf-8,chinese,latin1
set encoding=utf-8

source ~/.vim/.bundles.vim 

set nocompatible

syntax enable
syntax on

set incsearch
set hlsearch
set smartcase

set number
set laststatus=2

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set autoindent
set smartindent

set cursorline
set nowrap
set showmode

set showmatch
set ignorecase
set smartcase
set wildmenu


set foldmethod=syntax
set nofoldenable

let mapleader=";"
let maplocalleader=";"
"airline
let g:airline_theme='powerlineish'
let g:airline_left_sep=' '
let g:airline_right_sep=' '
let g:airline_section_z=' '
" easymotion
let g:EasyMotion_leader_key =';'

" easymotion
let g:EasyMotion_leader_key =';'

colorscheme molokai

"tabbar
let g:Tb_MaxSize=2
let g:Tb_TabWrap=1

nnoremap <CR> <C-v>
nnoremap <BS> <C-f>


" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>


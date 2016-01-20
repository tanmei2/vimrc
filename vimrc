call plug#begin('~/.vim/plugged')

Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang' }
Plug 'vim-airline/vim-airline'
Plug 'kien/rainbow_parentheses.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/IndentLine'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-expand-region'
Plug 'unblevable/quick-scope'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/vim-easy-align'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/unite.vim'
if has('win32')
    Plug 'sgur/unite-everything'
endif


call plug#end()

set nocompatible

set autoread
set nobackup
set noswapfile
set nolist
set wrap
set ruler
set showcmd
set showmode

set wildmenu
set wildignore=*.o,*.swp,*.bak,*.pyc,*.class,.svn
set completeopt=longest,menu

filetype plugin indent on
syntax on
syntax enable

set nu
set laststatus=2

set hlsearch
set incsearch

set ignorecase
set smartcase

set smartindent
set autoindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set background=dark
set t_Co=256

colorscheme peachpuff

autocmd! bufwritepost .vimrc source %
autocmd! InsertLeave * if pumvisible() == 0|pclose|endif

let mapleader = ';'
let maplocalleader = ';'
let g:mapleader = ';'

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap kj <Esc>

noremap <silent> <leader>/ :nohls<CR>

vnoremap < <gv
vnoremap > >gv

noremap <Leader>sa ggVG

nnoremap <leader>v V`}
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>


" rainbow_parentheses {{{
    let g:rbpt_colorpairs = [
        \ ['brown',       'RoyalBlue3'],
        \ ['Darkblue',    'SeaGreen3'],
        \ ['darkgray',    'DarkOrchid3'],
        \ ['darkgreen',   'firebrick3'],
        \ ['darkcyan',    'RoyalBlue3'],
        \ ['darkred',     'SeaGreen3'],
        \ ['darkmagenta', 'DarkOrchid3'],
        \ ['brown',       'firebrick3'],
        \ ['gray',        'RoyalBlue3'],
        \ ['black',       'SeaGreen3'],
        \ ['darkmagenta', 'DarkOrchid3'],
        \ ['Darkblue',    'firebrick3'],
        \ ['darkgreen',   'RoyalBlue3'],
        \ ['darkcyan',    'SeaGreen3'],
        \ ['darkred',     'DarkOrchid3'],
        \ ['red',         'firebrick3'],
        \ ]

    let g:rbpt_max = 16
    let g:rbpt_loadcmd_toggle = 0
    au VimEnter * RainbowParenthesesToggle
    au Syntax * RainbowParenthesesLoadRound
    au Syntax * RainbowParenthesesLoadSquare
    au Syntax * RainbowParenthesesLoadBraces
" }}}

" indentLine {{{
    let indentLine_char = '¦'

" }}}


" tagbar {{{
    let g:tagbar_autofocus = 1
" }}}

" expandregion {{{
    noremap <silent> <leader>k <Plug>(expand_region_expand)
    noremap <silent> <leader>j <Plug>(expand_region_shrink)
" }}}

" quickscope {{{
    let g:qs_highlight_on_keys = ['f', 'F']
" }}}


" easymotion {{{
    let g:EasyMotion_leader_key = ';'
" }}}

" easyalign {{{
    vmap ga <Plug>(EasyAlign)
    nmap ga <Plug>(EasyAlign)
" }}}


" youcompleteme {{{
    let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"
    let g:ycm_confirm_extra_conf = 0
" }}}

" quick-scope {{{
    let g:qs_highlight_on_keys = ['f', 'F']
" }}}

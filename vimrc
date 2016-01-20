if has('vim_starting')
    if &compatible
        set nocompatible
    endif
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', { 'build': {'mac': 'make', 'win': 'mingw32-make'} }
NeoBundle 'Shougo/unite.vim'
if has('win32')
    NeoBundle 'sgur/unite-everything'
endif
NeoBundle 'Valloric/YouCompleteMe', { 'build': {'mac': './install.py --clang-completer --system-libclang', 'win': './install.py --clang-completer'} }
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'Yggdroot/IndentLine'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'unblevable/quick-scope'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'terryma/vim-expand-region'

call neobundle#end()


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

set tabstop=2
set softtabstop=2
set shiftwidth=2
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

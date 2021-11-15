"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/michele/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/michele/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'tomasr/molokai'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

filetype plugin indent on

colorscheme molokai
set number
set cursorline
set t_Co=256
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set smartcase
set smarttab
set clipboard=unnamed
set backspace=indent,eol,start
" Buffer stuff
set hidden

"""""""""""""""""""""""""""""
" Airline
"""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemode = ':t'
let g:airline_theme = 'molokai'

autocmd BufWritePre * %s/\s\+$//e

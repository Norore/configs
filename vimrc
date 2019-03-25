set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'scrooloose/nerdtree'

"Plugin 'Valloric/YouCompleteMe'

"Plugin 'vim-syntastic/syntastic'

Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'qbbr/vim-symfony'

"Plugin 'alvan/vim-closetag'
Plugin 'fenetikm/falcon'
Plugin 'Eluminae/vim-twig'

" markdown support
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" General
colors molokai
set number
set linebreak
set showbreak=+++ 
set showmatch
set visualbell
 
set hlsearch
set smartcase
set ignorecase
set incsearch
 
"set autoindent
"set shiftwidth=4
"set tabstop=4

" Advanced
set ruler

" Show special chars
set list
set listchars=tab:+-,nbsp:·

set undolevels=1000
set backspace=indent,eol,start

" ouvrir Nerdtree par défaut
autocmd vimenter * NERDTree
" fermer vim si nerdtree est le dernier panneau ouvert
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

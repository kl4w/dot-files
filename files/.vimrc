set nocompatible              " be iMproved, required
filetype off                  " required

" set default 'runtimepath' (without ~/.vim folders)
let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after', $VIM, $VIMRUNTIME, $VIM)

" what is the name of the directory containing this file?
let s:portable = expand('<sfile>:p:h')

" add the directory to 'runtimepath'
let &runtimepath = printf('%s/.vim,%s,%s/after', s:portable, &runtimepath, s:portable)

call plug#begin(printf('%s/.vim/plugged', s:portable))
Plug 'hashivim/vim-hashicorp-tools'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/seoul256.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-sensible'
Plug 'wesQ3/vim-windowswap'
Plug 'vim-scripts/YankRing.vim'
call plug#end()

filetype plugin indent on    " required
filetype plugin on

" Backspace should work across lines
set bs=2

"set leader key to ,
let mapleader=","

" set yanking prefs
let g:yankring_history_dir = printf('%s/.vim', s:portable)
let g:yankring_history_file = 'yankring_history'

" Read files from .vim directory
source .vim/display.vim
source .vim/hashivim.vim
source .vim/indent.vim
source .vim/macros.vim
source .vim/mappings.vim
source .vim/nerdtree.vim
source .vim/nerdcommenter.vim
source .vim/paste.vim
source .vim/state.vim

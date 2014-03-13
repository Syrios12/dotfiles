" for vundle

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" put bundle commands here

Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'

filetype plugin indent on


" remappings

:imap jk <Esc>


" options

syntax on

"color scheme

syntax enable
set background=dark
colorscheme solarized
set t_co=256

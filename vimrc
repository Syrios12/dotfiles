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
Bundle 'scrooloose/syntastic'
Bundle 'davidhalter/jedi-vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

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

"for powerline

set encoding=utf8
set termencoding=utf8
set guifont=Meslo\ LG\ L\ DZ\ Regular\ for\ Powerline
let g:Powerline_symbols='fancy'
set laststatus=2

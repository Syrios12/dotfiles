" for vundle

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" put bundle commands here

Bundle 'scrooloose/nerdtree'

filetype plugin indent on


" remappings

:imap jk <Esc>


" options

syntax on

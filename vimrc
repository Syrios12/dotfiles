" for vundle

set nocompatible
filetype off
set rtp+=~/.vim/Bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" put Bundle commands here

Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'davidhalter/jedi-vim'
Bundle 'lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'sjl/gundo.vim'
Bundle 'ervandew/supertab'

filetype plugin indent on


" remappings

:imap jk <esc>


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
set guifont=meslo\ lg\ l\ dz\ regular\ for\ powerline
let g:powerline_symbols='fancy'
set laststatus=2

"for syntastic

let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_python_checkers = ['flake8']
"for gundo

nnoremap <F5> :GundoToggle<CR>

" for vundle

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'

" put Plugin commands here

Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'davidhalter/jedi-vim'
" Plugin 'lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'sjl/gundo.vim'
Plugin 'ervandew/supertab'

call vundle#end()
filetype plugin indent on


" remappings

:imap jk <esc>
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

" options

syntax on

"color scheme

syntax enable
set background=dark
let g:solarized_termtrans =  1
" colorscheme solarized
set t_co=256

"for powerline

" set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" let g:Powerline_symbols = 'fancy' 
" set laststatus=2
" set fillchars+=stl:\ ,stlnc:\
" set encoding=utf-8

"for syntastic

let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_python_checkers = ['flake8']

"for gundo

nnoremap <F5> :GundoToggle<CR>

"font
set guifont=Inconsolata\ for\ Powerline:h14

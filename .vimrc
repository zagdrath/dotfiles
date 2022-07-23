" SETTINGS ---------------------------------------------------------------- {{{

set nocompatible
filetype on
set number
syntax on

let g:gruvbox_italic=1

" }}}

" PLUGINS ---------------------------------------------------------------- {{{

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on
autocmd vimenter * ++nested colorscheme gruvbox
let g:airline_theme='gruvbox'
set background=dark

" }}}

" SCRIPTS ---------------------------------------------------------------- {{{

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}
" Neovim config
set nocompatible            " Disable compatibility
set tabstop=4               " Number of columns occupied by a tab 
set softtabstop=4           " See multiple spaces as tabstops so <BS> does the right thing
set expandtab               " Converts tabs to white space
set shiftwidth=4            " Width for autoindents
set autoindent              " Indent a new line the same amount as the line just typed
set number                  " Add line numbers
set wildmode=longest,list   " Get bash-like tab completions
filetype plugin indent on   " Allow auto-indenting depending on file type
syntax on                   " Syntax highlighting
set cursorline              " Highlight current cursorline
set ttyfast                 " Speed up scrolling in Neovim
set noswapfile

set encoding=utf8
set guifont=DroidSansMono\ Nerd\ Font\ 11

" Install vim-plug if not found
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Plugins
call plug#begin('~/.config/nvim/autoload')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Keymaps
behave mswin              " Select text
set clipboard=unnamedplus " Use system clipboard

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

imap <c-z> <c-o>:u<CR>

nmap <c-s> :w<CR>         " Save in normal mode
imap <c-s> <Esc>:w<CR>l   " Save in insert  mode
vmap <c-s> <Esc>:w<CR>    " Save in visual mode

" Gruvbox config
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:gruvbox_italic=1
autocmd vimenter * ++nested colorscheme gruvbox

" NERDTree config
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Airline config
let g:airline_theme= 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

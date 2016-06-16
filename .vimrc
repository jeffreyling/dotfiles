
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

filetype plugin on
set tabstop=2
set shiftwidth=2
set expandtab

set backspace=2

set nocompatible
syntax on

set background=dark
colorscheme solarized
let g:solarized_termcolors=256
se t_Co=16
set number
set ruler

set hlsearch
set incsearch
" for moving through long sentences
nnoremap j gj
nnoremap k gk

" for convenient splitting of windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l

set wildmode=longest,list

set autowrite
au FocusLost * :wa

" Linter
set errorformat+=%f:%l:%m

" LaTeX (rubber) macro for compiling
nnoremap <leader>t :w<CR>:!rubber --pdf --warn all %<CR>
" View PDF macro; '%:r' is current file's root (base) name.
nnoremap <leader>v :!open %:r.pdf &<CR><CR>

" For Python
nnoremap <leader>z :w<CR>:!python %<CR>

" for matching if/end
runtime macros/matchit.vim

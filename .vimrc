"" .vimrc - This is a basic .vimrc file that makes vim more usable.
"" It will more than likely be modified in the future.

set nocompatible				" be iMproved, required
filetype off					" required

"" Text editing settings
syntax enable					" Syntax highlighting
set number relativenumber       " Enable relative line number
set expandtab					" Use spaces instead of tabs
set smarttab					" Turn on smart tabbing

set shiftwidth=4				" 1 tab = 4 spaces
set tabstop=4

"" Lightline settings
set laststatus=2

"" Lightline colorscheme
let g:lightline = {
    \ 'colorscheme': 'darcula',
    \ }

"" Mouse scrolling
set mouse=nicr

"" Splits and tabbed files
set splitbelow splitright       " splitbelow or splitright

"" Key bindings
" Copy to clipboard with Ctrl+y
vnoremap <C-y> "*y :let @+=@*<CR>

" Paste from the keyboard with Ctrl+p
map <C-p> "+P

""" END OF FILE

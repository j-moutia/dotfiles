"" .vimrc - This is a basic .vimrc file that makes vim more usable.
"" It will more than likely be modified in the future.

set nocompatible				" be iMproved, required
filetype off					" required

"" Basic settings
syntax on					    " Syntax highlighting
set number relativenumber       " Enable relative line number
set expandtab					" Use spaces instead of tabs
set smarttab					" Turn on smart tabbing

set shiftwidth=4				" 1 tab = 4 spaces
set tabstop=4

"" Colors and color scheme
"set termguicolors               " Enable 256 color mode.
"colorscheme spacegray           " Use spacegray color scheme

"" Lightline settings
set laststatus=2

"" Lightline colorscheme
let g:lightline = {
    \ 'colorscheme': 'darcula',
    \ }

"" Current line highlighting.
" set cursorline
" highlight CursorLine ctermbg=LightGray cterm=bold guibg=#444444

"" Mouse scrolling
set mouse=a

"" Splits and tabbed files
set splitbelow splitright       " splitbelow or splitright

"" Key bindings
" Copy to clipboard with Ctrl+y
vnoremap <C-y> "*y :let @+=@*<CR>

" Paste from the keyboard with Ctrl+p
map <C-p> "+P

" Split navigation with Ctrl-h/j/k/l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

""" END OF FILE

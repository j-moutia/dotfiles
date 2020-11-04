"" init.vim - Neovim runs this on startup. A couple of settings are applied
"" here to make it more usable.

set nocompatible
filetype off

"" Basic settings
syntax on
set number relativenumber
set expandtab
set smarttab

set shiftwidth=4
set tabstop=4

"" Use the clipboard for copy/paste
set clipboard+=unnamedplus

"" Guicursor
set guicursor=a:ver20

"" Colors and color scheme
set background=dark
set termguicolors
colorscheme ceudah

"" Lightline status
set laststatus=2

"" Lightline color scheme
let g:lightline = { 'colorscheme': 'material', }

"" Current line highlighting
set cursorline

"" Enable mouse control
set mouse=a

"" Splits and tabbed files
set splitbelow splitright

"" ------- KEY BINDINGS -------
" Split navigation with Ctrl-h/j/k/l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

""" END OF FILE

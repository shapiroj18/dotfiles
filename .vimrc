syntax on

set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nu
set nowrap
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-utils/vim-man'
Plug 

call plug#end()

colorscheme gruvbox
set background=dark

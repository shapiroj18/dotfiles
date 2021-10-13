syntax on

set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set noswapfile
set number
set relativenumber
set nowrap
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdcommenter'

call plug#end()

colorscheme gruvbox
set background=dark

let mapleader = " "
let g:netrw_banner = 0
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1


nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex<bar> :vertical resize 30<CR>


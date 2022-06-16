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
set backspace=indent,eol,start
set scrolloff=8
set wrap linebreak
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

colorscheme gruvbox
set background=dark

let mapleader = " "
let g:netrw_banner = 0
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let NERDTreeShowHidden=1

inoremap jk <esc>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>d :NERDTree<CR>
nnoremap <leader>dd :NERDTreeClose<CR>
" Note that for commenting and uncommenting do <leader>ci

" YouCompleteMe Configs
nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
let g:ycm_auto_hover = ''
nmap <leader>de <plug>(YCMHover)

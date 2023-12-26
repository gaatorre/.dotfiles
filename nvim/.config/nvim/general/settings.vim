set autoindent smartindent

" Color stuff
syntax on
color desert

" relative number
set number relativenumber

set tabstop=4
set shiftwidth=4

nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>

imap jk <Esc>
imap kj <Esc>

" Matching parenthisis is now m
nmap m %
vmap m %

" Remap the leader key
let mapleader=","
let maplocalleader = ".."

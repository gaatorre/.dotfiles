" Install package manager
call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
" LaTeX VIMtex
Plug 'lervag/vimtex'
" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Install using vim-plug
Plug 'deoplete-plugins/deoplete-clang'
" Nerdtree
Plug 'scrooloose/nerdtree'
" better statusline
Plug 'vim-airline/vim-airline'
" Git
Plug 'airblade/vim-gitgutter'
"vim fswitch
Plug 'derekwyatt/vim-fswitch'
"c++ syntax
Plug 'bfrg/vim-cpp-modern'
"sidebar
Plug 'liuchengxu/vista.vim'
"Restore session
Plug 'tpope/vim-obsession'

call plug#end()

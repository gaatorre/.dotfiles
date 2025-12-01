local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
-- Ex.
-- Plug('junegunn/vim-easy-align')

Plug('neovim/nvim-lspconfig')

Plug('lervag/vimtex')

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

Plug('numToStr/Comment.nvim')

-- Autocomplete
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp-signature-help')
Plug('hrsh7th/cmp-nvim-lua')

-- For ultisnips users.
Plug('SirVer/ultisnips')
Plug('quangnguyen30192/cmp-nvim-ultisnips')

-- Rust
Plug('vadimcn/codelldb')

-- Debug
Plug('puremourning/vimspector')

-- Windows
Plug('voldikss/vim-floaterm')

-- Diagnostics window
Plug('folke/trouble.nvim')

-- Nerdtree
Plug('preservim/nerdtree')

vim.call('plug#end')

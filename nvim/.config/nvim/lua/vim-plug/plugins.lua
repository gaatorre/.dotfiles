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

-- Vsnip
Plug('hrsh7th/cmp-vsnip')
Plug('hrsh7th/vim-vsnip')

vim.call('plug#end')

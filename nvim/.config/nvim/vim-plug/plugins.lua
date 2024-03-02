local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
-- Ex.
-- Plug('junegunn/vim-easy-align')

Plug('neovim/nvim-lspconfig')

vim.call('plug#end')

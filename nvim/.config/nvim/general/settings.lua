vim.autoindent=smartindent

vim.syntax=on
vim.cmd('colorscheme desert')

vim.api.nvim_set_keymap(
  "i",
  "jk",
  "<Esc>",
  {}
)

vim.api.nvim_set_keymap(
  "i",
  "kj",
  "<Esc>",
  {}
)

vim.api.nvim_set_keymap(
  'n',
  'm',
  '%',
  {}
)

vim.api.nvim_set_keymap(
  'v',
  'm',
  '%',
  {}
)

vim.wo.relativenumber = true

vim.g.mapleader = ","
vim.g.maplocalleader = ".."

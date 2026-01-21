local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- theme
Plug('rebelot/kanagawa.nvim')

-- vimtree
Plug('kyazdani42/nvim-tree.lua')
Plug('kyazdani42/nvim-web-devicons')

-- tab bars
Plug('romgrk/barbar.nvim')

-- status line
Plug('nvim-lualine/lualine.nvim')

-- syntax tree or something, helps with syntax highlighting
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

-- LSP, autocomplete
Plug('neovim/nvim-lspconfig')

-- nvim cmp
Plug('hrsh7th/cmp-buffer') 
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline') 
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp') 
Plug('hrsh7th/cmp-nvim-lsp-signature-help')

vim.call('plug#end')

home = os.getenv("HOME")
package.path = home .. "/.config/nvim/?.lua;" .. package.path

require "common"
require "theme"
require "vimtree"
require "barbar"
require "lua_line"
require "lsp"
require "cmp_config"

-- LSP enable configurations
vim.lsp.enable('gopls')
vim.lsp.enable('clangd')
vim.lsp.enable('csharp_ls')

-- command line abbreviations
vim.keymap.set("ca", "nto", "NvimTreeOpen")
vim.keymap.set("ca", "ntc", "NvimTreeClose")

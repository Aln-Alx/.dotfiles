-- NVIM CONFIG BY allen-alex
-- init.lua

-- [ Install VimPlug] --
-- (if not already)


local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
	vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	vim.o.runtimepath = vim.o.runtimepath
	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end
-- extracted from @BreadOnPenguins's config


-- ################# --


local vim = vim
local Plug = vim.fn["plug#"]


-- [Require Plugins] --


vim.call('plug#begin')


Plug('catppuccin/nvim', { ['as'] = 'catppuccin' } ) --colorscheme
Plug('nvim-lualine/lualine.nvim') --statusline
Plug('nvim-tree/nvim-web-devicons') --pretty icons
Plug('folke/which-key.nvim') --mappings popup
Plug('romgrk/barbar.nvim') --bufferline
Plug('nvim-treesitter/nvim-treesitter') --improved syntax
Plug('mfussenegger/nvim-lint') --async linter
Plug('nvim-tree/nvim-tree.lua') --file explorer
Plug('windwp/nvim-autopairs') --autopairs
Plug('lewis6991/gitsigns.nvim') --git
Plug('numToStr/Comment.nvim') --easier comments
Plug('norcalli/nvim-colorizer.lua') --color highlight
Plug('ibhagwan/fzf-lua') --fuzzy finder and grep
Plug('MeanderingProgrammer/render-markdown.nvim') --render md inline
Plug('rafamadriz/friendly-snippets') -- snippet collection
Plug('hrsh7th/nvim-cmp') -- cmp plugin
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('mfussenegger/nvim-lint')
Plug('mason-org/mason.nvim')
Plug('mason-org/mason-lspconfig.nvim')

vim.call('plug#end')


-- ################# --

-- [Require Config files] --


require("config.theme")
require("config.mappings")
require("config.options")
require("config.autocmd")


require("plugins.autopairs")
require("plugins.barbar")
require("plugins.colorscheme")
require("plugins.comment")
require("plugins.fzf-lua")
require("plugins.gitsigns")
require("plugins.lualine")
--require("plugins.nvim-lint")
require("plugins.nvim-tree")
require("plugins.treesitter")
require("plugins.cmp")
require("plugins.mason")
require("plugins.mason-lspconfig")

-- ###################### --
--
--
vim.lsp.config('clangd', {
  filetypes = { 'c', 'cpp' },
})


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	  vim.fn.system({
	    "git",
	    "clone",
	    "--filter=blob:none",
	    "https://github.com/folke/lazy.nvim.git",
	    "--branch=stable", 			-- latest stable release
	    lazypath,
	  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	'cpea2506/one_monokai.nvim',		-- Monokai Theme.

	'nvim-lualine/lualine.nvim',		-- Statusline.

	'fatih/vim-go',						-- Go for vim

  	'nvim-tree/nvim-web-devicons',		-- Icons like VS-code.

	'nvim-telescope/telescope.nvim', tag = '0.1.3', -- Fuzzy finder
	'nvim-lua/plenary.nvim',
    
    'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', -- Highlight

	{ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make',			-- Telescope Algo.
		cond = vim.fn.executable 'make' == 1 },

	'williamboman/mason.nvim',		-- Automatically install LSPs to stdpath for neovim.
	'williamboman/mason-lspconfig.nvim',

	'neovim/nvim-lspconfig',		-- LSP Configuration & Plugins.
	'j-hui/fidget.nvim',			-- Useful status updates for LSP
	'hrsh7th/nvim-cmp',		
	'hrsh7th/cmp-nvim-lsp',			-- LSP source for nvim-cmp
	'L3MON4D3/LuaSnip',				-- Snippets
	'saadparwaiz1/cmp_luasnip',		-- Snippets
	'rafamadriz/friendly-snippets',	-- Snippets
	'glepnir/lspsaga.nvim', branch = 'main',		-- Enhanced lsp uis.
	'onsails/lspkind.nvim',			-- vs-code like icons for autocompletion
	'jose-elias-alvarez/null-ls.nvim',	-- Diagnositics, formatting, completion.

  	'windwp/nvim-autopairs',		-- Autoclose () {} "" etc..
  	'windwp/nvim-ts-autotag', after = 'nvim-treesitter',	-- Autoclose tags.

  	'lewis6991/gitsigns.nvim',		-- Show git like line modifications on left hand side.

	{'akinsho/toggleterm.nvim', version = "*", config = true},

	'shortcuts/no-neck-pain.nvim',	-- Code focus to middle of screen.

}

local opts = {}

require("lazy").setup(plugins, opts)

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  	use ('wbthomason/packer.nvim')												-- Packer plugin manager
	use {'svrana/neosolarized.nvim',											-- Theme
	requires = { 'tjdevries/colorbuddy.nvim' }		                            -- Theme enhancer
	}																			-----------------------------	
	use { 'nvim-telescope/telescope.nvim',										-- Telescope
		branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }
	use { 'nvim-telescope/telescope-fzf-native.nvim', 
		run = 'make', cond = vim.fn.executable 'make' == 1 }					-----------------------------
  	use("nvim-tree/nvim-tree.lua")												-- File explorer 
  	use("nvim-tree/nvim-web-devicons")											-- Icons like VS-code
	use 'nvim-lualine/lualine.nvim'												-- Statusline
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})					-- Treesitter
	use('nvim-treesitter/playground')											-- Treesitter playground
	use {																		-- LSP Configuration & Plugins
		'neovim/nvim-lspconfig',
		requires = {
			'williamboman/mason.nvim',											-- Automatically install LSPs to stdpath for neovim
			'williamboman/mason-lspconfig.nvim',
			'j-hui/fidget.nvim',												-- Useful status updates for LSP
		},
	}																			------------------------------
	use {																		-- Autocompletion all together
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'rafamadriz/friendly-snippets',
		},
	}																			------------------------------
  	use({ "glepnir/lspsaga.nvim", branch = "main" })							-- Enhanced lsp uis
  	use("onsails/lspkind.nvim")													-- vs-code like icons for autocompletion
	use'jose-elias-alvarez/null-ls.nvim'
	use'jayp0521/mason-null-ls.nvim'
	use ('glepnir/dashboard-nvim')												-- Dashboard
  	use("windwp/nvim-autopairs")												-- Autoclose () {} "" etc..
  	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" })				-- Autoclose tags
  	use("lewis6991/gitsigns.nvim")												-- Show git like line modifications on left hand side	
end)


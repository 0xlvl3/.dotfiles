vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  	use ('wbthomason/packer.nvim')	
	
	use {'svrana/neosolarized.nvim',
	requires = { 'tjdevries/colorbuddy.nvim' }		
	}
	
	--Telescope
	use { 'nvim-telescope/telescope.nvim', 
		branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }
	use { 'nvim-telescope/telescope-fzf-native.nvim', 
		run = 'make', cond = vim.fn.executable 'make' == 1 }

	-- file explorer
  	use("nvim-tree/nvim-tree.lua")

  	-- vs-code like icons
  	use("nvim-tree/nvim-web-devicons")	
	use 'nvim-lualine/lualine.nvim' -- Statusline

	-- Treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')

	use { -- LSP Configuration & Plugins
		'neovim/nvim-lspconfig',
		requires = {
			-- Automatically install LSPs to stdpath for neovim
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',

			-- Useful status updates for LSP
			'j-hui/fidget.nvim',
		},
	}

	use { -- Autocompletion
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'rafamadriz/friendly-snippets',
		},
	}

  	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
  	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	use'jose-elias-alvarez/null-ls.nvim'
	use'jayp0521/mason-null-ls.nvim'

	-- auto closing
  	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
  	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

  	-- git integration
  	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side	
end)


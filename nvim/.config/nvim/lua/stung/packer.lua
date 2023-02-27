vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  	use ('wbthomason/packer.nvim')			-- God mode.

	use ("catppuccin/nvim")					-- Theme.

	use { 'nvim-telescope/telescope.nvim',	-- Telescope standard.
		branch = '0.1.x',
		requires = { 'nvim-lua/plenary.nvim' }
	}
	use { 'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make',						-- Telescope Algo.
		cond = vim.fn.executable 'make' == 1 }
  	use("nvim-tree/nvim-tree.lua")			-- File explorer. 
  	use("nvim-tree/nvim-web-devicons")		-- Icons like VS-code.
	use('nvim-lualine/lualine.nvim')		-- Statusline.
	use('nvim-treesitter/nvim-treesitter',	-- Treesitter; syntax highlighting.
		{run = ':TSUpdate'})
	use {'neovim/nvim-lspconfig',			-- LSP Configuration & Plugins.
		requires = {
			'williamboman/mason.nvim',		-- Automatically install LSPs to stdpath for neovim.
			'williamboman/mason-lspconfig.nvim',
			'j-hui/fidget.nvim',			-- Useful status updates for LSP
		},
	}
	use {'hrsh7th/nvim-cmp',				-- Autocompletion all together
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'rafamadriz/friendly-snippets',
		},
	}
 	use({ "glepnir/lspsaga.nvim",
		branch = "main" })					-- Enhanced lsp uis.
  	use("onsails/lspkind.nvim")				-- vs-code like icons for autocompletion
	use('jose-elias-alvarez/null-ls.nvim')	-- Diagnositics, formatting, completion.
	use('jayp0521/mason-null-ls.nvim')
  	use("windwp/nvim-autopairs")			-- Autoclose () {} "" etc..
  	use({ "windwp/nvim-ts-autotag",
		after = "nvim-treesitter" })		-- Autoclose tags.
  	use("lewis6991/gitsigns.nvim")			-- Show git like line modifications on left hand side.
	use("shortcuts/no-neck-pain.nvim")		-- Code focus to middle of screen.

end)

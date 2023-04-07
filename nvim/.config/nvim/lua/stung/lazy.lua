
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
	'fatih/vim-go',
	{ 'nvim-telescope/telescope.nvim',	-- Telescope standard.
		branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },

	{ 'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make',			-- Telescope Algo.
		cond = vim.fn.executable 'make' == 1 },
  	"nvim-tree/nvim-tree.lua",		-- File explorer.
  	"nvim-tree/nvim-web-devicons",		-- Icons like VS-code.
	'nvim-lualine/lualine.nvim',		-- Statusline.
	{'hrsh7th/nvim-cmp',					-- Autocompletion all together
		dependencies = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'rafamadriz/friendly-snippets',
		},
	},
 	{ "glepnir/lspsaga.nvim",
		branch = "main" },		-- Enhanced lsp uis.
	{'neovim/nvim-lspconfig',		-- LSP Configuration & Plugins.
		dependencies = {
			'williamboman/mason.nvim',		-- Automatically install LSPs to stdpath for neovim.
			'williamboman/mason-lspconfig.nvim',
			'j-hui/fidget.nvim',			-- Useful status updates for LSP
		},
	},
  	"onsails/lspkind.nvim",			-- vs-code like icons for autocompletion
	'jose-elias-alvarez/null-ls.nvim',	-- Diagnositics, formatting, completion.
	'jayp0521/mason-null-ls.nvim',
  	"windwp/nvim-autopairs",		-- Autoclose () {} "" etc..
  	{ "windwp/nvim-ts-autotag",
		after = "nvim-treesitter" },	-- Autoclose tags.
  	"lewis6991/gitsigns.nvim",		-- Show git like line modifications on left hand side.
	{'akinsho/toggleterm.nvim', version = "*", config = true}

}

local opts = {}

require("lazy").setup(plugins, opts)

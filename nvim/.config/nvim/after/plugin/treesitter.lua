local treesitter = require("nvim-treesitter.configs")


-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
	disable = {},
  },
  -- enable indentation
  indent = {
		enable = true,
		disable = {"python"},
	},
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
	"go",
	"gomod",
	"gowork",
    "json",
    "javascript",
    "yaml",
    "html",
    "css",
    "markdown",
    "bash",
    "lua",
    "vim",
    "dockerfile",
  },
  -- auto install above language parsers
  auto_install = true,
})

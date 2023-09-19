require("toggleterm").setup{
	direction = "horizontal",
	size = 15,
	open_mapping = [[<C-g>]],
	highlights = {
		Normal = {
			guibg = "#2E343C",
		},
	},
	shade_terminals = false,
	autochdir = true,
}

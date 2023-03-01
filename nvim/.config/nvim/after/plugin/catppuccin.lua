 require("catppuccin").setup({
    flavour = "latte", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {
		 latte = {
			 green = "#a8e78d", -- Strings.
			 sky = "#ffe0da", -- Operators.
			 text = "#ffffff", -- Command, Sidenums.
			 mauve = "#ffcf40", -- Tags; funcs,returns.
			 --[[
			 green = "#e8e66d", -- Strings.
			 lavender = "#cbbcf4", -- Variables.
			 peach = "#f7878f", -- Setup.
			 blue = "#b1ead9", -- Requires.
			 flamingo = "#f44336", -- Closes.
			 surface0 = "#ebe7e7", -- Surface (Comments).
			 surface1 = "#ebe7e7",
			 surface2 = "#ebe7e7",
			 ]]--
		 }
	 },
	 highlight_overrides = {
		 latte = function(C)
			return {
				 NvimTreeNormal = { fg = C.none }
			}
		end,
	 },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin" 

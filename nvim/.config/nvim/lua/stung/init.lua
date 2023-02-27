require("stung.keymaps")
require("stung.packer")

-- Settings
local options = {	
	fileencoding = "utf-8", 			-- file encoding for multibyte text
	mouse = "a", 						-- enable use of mouse clicks
	shiftwidth = 4, 					-- number of spaces to use for (auto)indent step
	tabstop = 4, 						-- number of spaces that <Tab> in file uses
	softtabstop = 4,					-- number of spaces that <Tab> uses while editing
	smartindent = true,					-- smart autoindenting for C programs
	number = true,						-- print the line number in front of each line
	relativenumber = true,				-- show relative line number in front of each line
	clipboard = "unnamedplus",			-- use the clipboard as the unnamed register
	cmdheight = 3,						-- number of lines to use for the command-line
	splitbelow = true,					-- new window from split is below the current one
	splitright = true,					-- new window is put right of the current one
	undofile = true,					-- save undo information in a file
	writebackup = false,				-- make a backup before overwriting a file
	cursorline = true,					-- highlight the screen line of the cursor 
	wrap = false,						-- long lines wrap and continue on the next line
	termguicolors = true,				-- set term gui colors
	scrolloff = 8,						-- minimum nr. of lines above and below cursor
	signcolumn = "yes",					-- when and how to display the sign column
	hlsearch = false,					-- highlight matches with last search pattern
	incsearch = true,					-- highlight match while typing search patterns
	updatetime = 50,					-- after this many milliseconds flush swap file
}

-- Loop for our settings
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- vimtex config
vim.g.vimtex_view_method = "zathura"

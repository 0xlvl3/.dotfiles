local options = {				
	fileencoding = "utf-8", 			-- file encoding for multibyte text
	mouse = "a", 						-- enable use of mouse clicks
	shiftwidth = 4, 					-- number of spaces to use for (auto)indent step
	tabstop = 4, 						-- number of spaces that <Tab> in file uses
	smartindent = true,					-- smart autoindenting for C programs
	number = true,						-- print the line number in front of each line
	clipboard = "unnamedplus",			-- use the clipboard as the unnamed register
	cmdheight = 3,						-- number of lines to use for the command-line
	splitbelow = true,					-- new window from split is below the current one
	splitright = true,					-- new window is put right of the current one
	undofile = true,					-- save undo information in a file
	writebackup = false,				-- make a backup before overwriting a file
	cursorline = true,					-- highlight the screen line of the cursor 
	wrap = false,						-- long lines wrap and continue on the next line
	termguicolors = true,				-- set term gui colors	
}

--how we create our key and value pair options using table
for k, v in pairs(options) do
  vim.opt[k] = v
end

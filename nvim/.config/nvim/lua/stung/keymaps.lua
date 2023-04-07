----------------------------------------------------------- 
---------------------- Keymaps
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to Space
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

------------
-- Normal --
------------

--paste 
map('n', '<leader>p', 'p')

--Move to end of line and start of line
map('n', '<leader>l', '<leader>$')
map('n', '<leader>h', '<S-^>')

--Better window navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

--Resize with arrows
map('n', '<C-Up>', ':resize +5<CR>')
map('n', '<C-Down>', ':resize -5<CR>')
map('n', '<C-Left>', ':vertical resize +5<CR>')
map('n', '<C-Right>', ':vertical resize -5<CR>')

--New tab
map('n', '<leader>t', ':tabedit<CR>')

--Tab navigation
map('n', '<S-l>', ':tabnext<CR>')
map('n', '<S-h>', ':tabprevious<CR>')

--Split screen vertical and horizontal
map('n', '<leader>|', ':vsplit<CR>')
map('n', '<leader>-', ':split<CR>')

--Exit current file
map('n', '<leader><ESC>', ':exit<CR>')

--Open NVIM TREE explorer
map('n', '<leader>e', ':NvimTreeToggle<CR>')

--Open buffer, note you need to tab after you do this command to select the file
map('n', '<leader>b', ':edit ')

--Navigate buffers
map('n', '<A-l>', ':bnext<CR>')
map('n', '<A-h>', ':bprevious<CR>')

------------
-- Insert --
------------

--Take you from insert mode back to normal mode
map('i', 'kj', '<ESC>')
map('i', 'jk', '<ESC>')

------------
-- Visual --
------------

--Stay in indent mode
map('v', '<', '<gv')
map('v', '>', '>gv')

--map('v', '<A-j>', ':m .+1<CR>==')
--map('v', '<A-k>', ':m .-2<CR>==')


--Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
map("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
map("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

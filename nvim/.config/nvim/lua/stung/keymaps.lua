----------------------------- 
--		###	Keymaps	###     |
----------------------------- 

local function map(mode, lhs, rhs, opts)
    local options = { noremap=true, silent=true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Set leaders
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes (For reference only)
-- normal_mode = "n",
-- insert_mode = "i",
-- visual_mode = "v",
-- visual_block_mode = "x",
-- term_mode = "t",
-- command_mode = "c",

-------------------
-- ###	Normal	###|
-------------------

-- Center mode
map('n', '<leader>nn', ':NoNeckPain<CR>')

-- Paste 
map('n', '<leader>p', 'p')

-- Move to end/start of line
map('n', '<leader>l', '<leader>$')
map('n', '<leader>h', '<S-^>')

-- Better window navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Resize with arrows
map('n', '<C-Up>', ':resize +5<CR>')
map('n', '<C-Down>', ':resize -5<CR>')
map('n', '<C-Left>', ':vertical resize +5<CR>')
map('n', '<C-Right>', ':vertical resize -5<CR>')

-- Tab operations
map('n', '<leader>t', ':tabedit<CR>')
map('n', '<S-l>', ':tabnext<CR>')
map('n', '<S-h>', ':tabprevious<CR>')

-- Split screen vertical and horizontal
map('n', '<leader>|', ':vsplit<CR>')
map('n', '<leader>-', ':split<CR>')

-- Exit current file
map('n', '<leader><ESC>', ':exit<CR>')

-- Open NVIM TREE explorer
map('n', '<leader>e', ':NvimTreeToggle<CR>')

-- Open buffer
map('n', '<leader>b', ':edit ')

-- Navigate buffers
map('n', '<A-l>', ':bnext<CR>')
map('n', '<A-h>', ':bprevious<CR>')


-------------------
-- ###  Insert	###|
-------------------

-- Return to normal mode from insert mode
map('i', 'kj', '<ESC>')
map('i', 'jk', '<ESC>')


-------------------
-- ###  Visual	###|
-------------------

-- Stay in indent mode
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Commented out maps
-- map('v', '<A-j>', ':m .+1<CR>==')
-- map('v', '<A-k>', ':m .-2<CR>==')

---------------------------
-- ###  Visual Block	###|
---------------------------

map('x', '/', 'I//', {noremap = true})

-----------------------
-- ###  Telescope	###|
-----------------------

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

local map = vim.keymap.set

-- Baisc
map("n", "<leader>w", ":w!<cr>")
map("n", "<leader>q", ":q!<cr>")
map("n", "<esc>", ":noh<cr>")

-- Splits
map("n", "<leader>v", ":vsplit<cr>")
map("n", "<leader>h", ":split<cr>")
map("n", "<c-h>", "<c-w>h")
map("n", "<c-j>", "<c-w>j")
map("n", "<c-k>", "<c-w>k")
map("n", "<c-l>", "<c-w>l")


-- Terminal
map("t", "<esc><esc>", "<c-\\><c-n>")

-- Oil
map("n", "<leader>e", require("oil").toggle_float)

-- Telescope
local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files)
map('n', '<leader>fg', builtin.live_grep)
map('n', '<leader>fb', builtin.buffers)
map('n', '<leader>fh', builtin.help_tags)

-- Mini.Tabline
map("n", "<tab>", ":bnext<cr>")
map("n", "<s-tab>", ":bprevious<cr>")

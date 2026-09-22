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

map("n", "<c-left>", ":vertical resize -2<cr>")
map("n", "<c-down>", ":resize +2<cr>")
map("n", "<c-up>", ":resize -2<cr>")
map("n", "<c-right>", ":vertical resize +2<cr>")

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
map('n', '<leader>fs', builtin.lsp_document_symbols)

-- Mini.Tabline
map("n", "<tab>", ":bnext<cr>")
map("n", "<s-tab>", ":bprevious<cr>")

-- Lsp
map("n", "<leader>d", vim.diagnostic.open_float)
map("n", "<leader>ca", vim.lsp.buf.code_action)

map("n", "gd", vim.lsp.buf.definition)
map("n", "gD", vim.lsp.buf.declaration)
map("n", "gi", vim.lsp.buf.implementation)
map("n", "gr", vim.lsp.buf.references)
map("n", "gy", vim.lsp.buf.type_definition)

map("n", "K", vim.lsp.buf.hover)

map("n", "<leader>rn", vim.lsp.buf.rename)

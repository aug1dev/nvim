local map = vim.keymap.set

-- Basic
map("n", "<leader>w", ":w!<cr>")
map("n", "<leader>q", ":q!<cr>")
map("n", "<leader>x", ":bd!<cr>")
map('n', '<esc>', ':noh<CR>')

-- Splits
map("n", "<leader>h", ":split<cr>")
map("n", "<leader>v", ":vsplit<cr>")
map("n", "<c-h>", "<c-w>h")
map("n", "<c-j>", "<c-w>j")
map("n", "<c-k>", "<c-w>k")
map("n", "<c-l>", "<c-w>l")

-- Neovide
if vim.g.neovide then
  vim.g.neovide_scale_factor = 1.0

  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end

  map({ "n", "v", "i" }, "<C-=>", function() change_scale_factor(1.1) end, { desc = "Zoom in" })
  map({ "n", "v", "i" }, "<C-->", function() change_scale_factor(1 / 1.1) end, { desc = "Zoom out" })
  map({ "n", "v", "i" }, "<C-0>", function() vim.g.neovide_scale_factor = 1.0 end, { desc = "Reset zoom" })

  map({ "n", "v", "i" }, "<F11>", function()
    vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen
  end, { desc = "Toggle fullscreen" })
end

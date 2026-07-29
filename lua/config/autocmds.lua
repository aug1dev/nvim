local view_group = vim.api.nvim_create_augroup("AutoView", { clear = true })

vim.api.nvim_create_autocmd({ "BufWinLeave", "BufWritePost" }, {
  group = view_group,
  pattern = "?*",
  callback = function()
    if vim.bo.buftype == "" and vim.fn.expand("%") ~= "" then
      vim.cmd("silent! mkview")
    end
  end,
})

vim.api.nvim_create_autocmd("BufWinEnter", {
  group = view_group,
  pattern = "?*",
  callback = function()
    if vim.bo.buftype == "" and vim.fn.expand("%") ~= "" then
      vim.cmd("silent! loadview")
    end
  end,
})

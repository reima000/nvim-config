-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.mouse = ""

vim.api.nvim_create_user_command("RemoveCR", function()
  vim.cmd(":%s/\\r//g")
end, { desc = "Remove all carriage return characters" })

vim.keymap.set("n", "p", function()
  -- Use yanky.nvim's paste operation
  require("yanky").put("p")
  -- Remove any ^M (\r) characters
  vim.cmd(":%s/\\r//g")
end, { noremap = true, silent = true })

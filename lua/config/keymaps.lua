-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Move line up
vim.keymap.set("n", "<A-k>", function()
  local count = vim.v.count1
  vim.cmd("move-" .. (count + 1))
end, { noremap = true, silent = true })

-- Move line down
vim.keymap.set("n", "<A-j>", function()
  local count = vim.v.count1
  vim.cmd("move+" .. count)
end, { noremap = true, silent = true })

-- Move selection up in visual mode
vim.keymap.set("v", "<A-k>", function()
  local count = vim.v.count1
  return ":m '<-" .. (count + 1) .. "<CR>gv=gv"
end, { noremap = true, silent = true, expr = true })

-- Move selection down in visual mode
vim.keymap.set("v", "<A-j>", function()
  local count = vim.v.count1
  return ":m '>+" .. count .. "<CR>gv=gv"
end, { noremap = true, silent = true, expr = true })

-- Map Ctrl + u to scroll half-page up and center cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- Map Ctrl + d to scroll half-page down and center cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })

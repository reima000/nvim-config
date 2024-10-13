-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.keymap",
  callback = function()
    vim.bo.filetype = "dts"
  end,
})

-- vim.keymap.set("n", "x", require("substitute").operator, { noremap = true })
-- vim.keymap.set("n", "xx", require("substitute").line, { noremap = true })
-- vim.keymap.set("n", "X", require("substitute").eol, { noremap = true })
-- vim.keymap.set("x", "x", require("substitute").visual, { noremap = true })
--
-- -- Helper function to swap two keys and their variants globally, excluding insert, command, and terminal modes
-- local function swap_keys_with_modifiers(key1, key2)
--   local modes = { "n", "v", "o", "x", "s" } -- Exclude insert (i), command-line (c), and terminal (t) modes
--
--   for _, mode in ipairs(modes) do
--     -- Swap lowercase key1 with lowercase key2
--     vim.keymap.set(mode, key1, key2, { noremap = true, silent = true })
--     vim.keymap.set(mode, key2, key1, { noremap = true, silent = true })
--
--     -- Swap uppercase key1 with uppercase key2
--     vim.keymap.set(mode, string.upper(key1), string.upper(key2), { noremap = true, silent = true })
--     vim.keymap.set(mode, string.upper(key2), string.upper(key1), { noremap = true, silent = true })
--
--     -- Swap <C-key1> with <C-key2> (Control-modified)
--     vim.keymap.set(mode, "<C-" .. key1 .. ">", "<C-" .. key2 .. ">", { noremap = true, silent = true })
--     vim.keymap.set(mode, "<C-" .. key2 .. ">", "<C-" .. key1 .. ">", { noremap = true, silent = true })
--
--     -- Swap <A-key1> with <A-key2> (Alt-modified)
--     vim.keymap.set(mode, "<A-" .. key1 .. ">", "<A-" .. key2 .. ">", { noremap = true, silent = true })
--     vim.keymap.set(mode, "<A-" .. key2 .. ">", "<A-" .. key1 .. ">", { noremap = true, silent = true })
--   end
-- end
--
-- -- ~/.config/nvim/lua/user/remap.lua
--
-- -- Function to set up global remaps
-- local function setup_key_remaps()
--   -- Swap 'n' and 'h', along with their capitalized, <C-n>, <A-n>, and <C-h>, <A-h> variations
--   swap_keys_with_modifiers("n", "h")
--   swap_keys_with_modifiers("e", "j")
--   swap_keys_with_modifiers("i", "k")
--   swap_keys_with_modifiers("o", "l")
--
--   -- Add more swaps here if needed
-- end
--
-- -- Create an autocommand to trigger after all plugins are loaded
-- vim.api.nvim_create_autocmd("User", {
--   pattern = "VeryLazy", -- Event triggered by Lazy.nvim after plugins have been loaded
--   callback = function()
--     setup_key_remaps() -- Call the remapping function after plugins are loaded
--   end,
-- })

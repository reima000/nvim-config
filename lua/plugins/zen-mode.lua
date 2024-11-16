return {
  "folke/zen-mode.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    options = {
      number = false,
    },
    plugins = {
      gitsigns = { enabled = true },
      tmux = { enabled = true },
      wezterm = { enabled = true, font = "+2" },
    },

    on_open = function()
      vim.cmd("set laststatus=0") -- Hide statusline
      vim.cmd("hi! link StatusLine Normal") -- Link StatusLine to Normal
      vim.cmd("hi! link StatusLineNC Normal") -- Link StatusLineNC to Normal
      vim.cmd("set statusline=%{repeat('─',winwidth('.'))}") -- Fill with decorative line
      -- vim.notify("ZenMode opened")
    end,
    on_close = function()
      vim.cmd("set laststatus=2")
      vim.cmd("hi clear StatusLine")
      vim.cmd("hi clear StatusLineNC")
      vim.cmd("set statusline=")
      require("lualine").setup({
        options = {
          theme = "auto", -- Replace "auto" with your original theme
        },
      })
      vim.notify("ZenMode closed")
    end,
  },
}

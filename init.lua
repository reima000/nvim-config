-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local lspconfig = require("lspconfig")

local mason_registry = require("mason-registry")
local vue_language_server_path = mason_registry.get_package("vue-language-server"):get_install_path()
  .. "/node_modules/@vue/language-server"

lspconfig.ts_ls.setup({
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = vue_language_server_path,
        languages = { "vue" },
      },
    },
  },
})

lspconfig.volar.setup({
  init_options = {
    vue = {
      hybridMode = false,
    },
  },
})
-- vim.cmd([[
--   highlight Normal guibg=none
--   highlight NormalNC guibg=none
--   highlight NonText guibg=none
--   highlight Normal ctermbg=none
--   highlight NormalNC ctermbg=none
--   highlight NonText ctermbg=none
--   highlight NeoTreeNormal ctermbg=none
--   highlight NeoTreeNormalNC ctermbg=none
--   highlight NeoTreeNormal guibg=none
--   highlight NeoTreeNormalNC guibg=none
-- ]])
-- vim.api.nvim_create_augroup("nobg", { clear = true })
-- vim.api.nvim_create_autocmd({ "ColorScheme" }, {
--   desc = "Make all backgrounds transparent",
--   group = "nobg",
--   pattern = "*",
--   callback = function()
--     vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
--     vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", ctermbg = "NONE" })
--     vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", ctermbg = "NONE" })
--     -- etc...
--   end,
-- })

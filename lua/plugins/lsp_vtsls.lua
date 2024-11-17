return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Disable vtsls
      opts.servers.vtsls = {
        enabled = false, -- Disable vtsls entirely
      }
    end,
  },
}

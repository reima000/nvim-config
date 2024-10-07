return {
  "codethread/qmk.nvim",
  config = function()
    ---@type qmk.UserConfig
    local conf = {
      name = "LAYOUT_ferris", -- Replace with your keyboard layout name
      layout = {
        "x x x x x _ x x x x x",
        "x x x x x _ x x x x x",
        "x x x x x _ x x x x x",
        "_ _ _ x x _ x x _ _ _",
      },
      variant = "zmk", -- Optional: set to 'zmk' if you're working with ZMK firmware
    }
    require("qmk").setup(conf)
  end,
}

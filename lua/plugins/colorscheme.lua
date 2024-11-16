return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    priority = 1000,
    opts = {
      color_overrides = {
        all = {
          rosewater_original = "#f4dbd6", -- hsl(10deg, 58%, 90%) - Default for subtle highlights
          rosewater = "#d4be98", -- Gruvbox Material (fg0)

          flamingo_original = "#f0c6c6", -- hsl(0deg, 58%, 86%) - Often used for warnings
          flamingo = "#ddc7a1", -- Gruvbox Material (fg1)

          pink_original = "#f5bde6", -- hsl(316deg, 74%, 85%) - Escape sequences, Regex
          pink = "#ea6962", -- Gruvbox Material (red)

          mauve_original = "#c6a0f6", -- hsl(267deg, 83%, 80%) - Keywords
          mauve = "#ea6962", -- Gruvbox Material (purple)

          red_original = "#ed8796", -- hsl(351deg, 74%, 73%) - Symbols, Atoms, Builtins
          red = "#ea6962", -- Gruvbox Material (red)

          maroon_original = "#ee99a0", -- hsl(355deg, 71%, 77%) - Parameters
          maroon = "#c14a4a", -- Gruvbox Material (dark red)

          peach_original = "#f5a97f", -- hsl(21deg, 86%, 73%) - Constants, Numbers
          peach = "#e78a4e", -- Gruvbox Material (orange)

          yellow_original = "#eed49f", -- hsl(40deg, 70%, 78%) - Classes, Enums, Annotations
          yellow = "#d8a657", -- Gruvbox Material (yellow)

          green_original = "#a6da95", -- hsl(105deg, 48%, 72%) - Strings
          green = "#89b482", -- Gruvbox Material (green)

          teal_original = "#8bd5ca", -- hsl(171deg, 47%, 69%) - Enum Variants
          teal = "#a9b665", -- Gruvbox Material (aqua)

          sky_original = "#91d7e3", -- hsl(189deg, 59%, 73%) - Operators
          sky = "#7daea3", -- Gruvbox Material (blue)

          sapphire_original = "#7dc4e4", -- hsl(199deg, 66%, 69%) - Alternative to sky for cooler tones
          sapphire = "#458588", -- Gruvbox Material (dark aqua)

          blue_original = "#8aadf4", -- hsl(220deg, 83%, 75%) - Methods, Functions, Properties
          blue = "#458588", -- Gruvbox Material (blue)

          lavender_original = "#b7bdf8", -- hsl(234deg, 82%, 85%) - Highlight for subtle keywords
          lavender = "#7daea3", -- Gruvbox Material (neutral purple)

          text_original = "#cad3f5", -- hsl(227deg, 68%, 88%) - Primary text color
          text = "#d4be98", -- Gruvbox Material (fg0)

          subtext1_original = "#b8c0e0", -- hsl(228deg, 39%, 80%) - Secondary muted text
          subtext1 = "#ddc7a1", -- Gruvbox Material (fg1)

          subtext0_original = "#a5adcb", -- hsl(227deg, 27%, 72%) - Tertiary muted text
          subtext0 = "#a89984", -- Gruvbox Material (fg2)

          overlay2_original = "#939ab7", -- hsl(228deg, 20%, 65%) - Comments, Delimiters
          overlay2 = "#928374", -- Gruvbox Material (fg3)

          overlay1_original = "#8087a2", -- hsl(228deg, 15%, 57%) - Slightly dimmer overlay
          overlay1 = "#7c6f64", -- Gruvbox Material (fg4)

          overlay0_original = "#6e738d", -- hsl(230deg, 12%, 49%) - Even dimmer overlay
          overlay0 = "#504945", -- Gruvbox Material (fg5)

          surface2_original = "#5b6078", -- hsl(230deg, 14%, 41%) - UI elements, line numbers
          surface2 = "#665c54", -- Gruvbox Material (bg3)

          surface1_original = "#494d64", -- hsl(231deg, 16%, 34%) - Darker UI elements
          surface1 = "#504945", -- Gruvbox Material (bg4)

          surface0_original = "#363a4f", -- hsl(230deg, 19%, 26%) - Background highlight
          surface0 = "#3c3836", -- Gruvbox Material (bg_current_word)

          base_original = "#24273a", -- hsl(232deg, 23%, 18%) - Main background
          base = "#282828", -- Gruvbox Material (bg0)

          mantle_original = "#1e2030", -- hsl(233deg, 23%, 15%) - Secondary background
          mantle = "#1d2021", -- Gruvbox Material (bg1)

          crust_original = "#181926", -- hsl(236deg, 23%, 12%) - Deepest background
          crust = "#141414", -- Gruvbox Material (bg_dim)
        },
      },
      transparent_background = true,
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  }, -- and this
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}

-- return {
--   -- add gruvbox
--   {
--     "sainnhe/gruvbox-material",
--     opts = {
--       transparent = true,
--       styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--       },
--     },
--   },
--
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "gruvbox-material",
--     },
--   },
-- }
--

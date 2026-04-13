-- lua/plugins/colors.lua

require("catppuccin").setup({
  flavour = "mocha",
  transparent_background = true,
  term_colors = true,

  styles = {
    comments = { "italic" },
    conditionals = {},
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
  },

  integrations = {

  },
})

vim.cmd.colorscheme("catppuccin-mocha")

local cp = require("catppuccin.palettes").get_palette("mocha")
local set_hl = vim.api.nvim_set_hl

-- mode colors
set_hl(0, "StatusNormal", { fg = cp.base, bg = cp.lavender, bold = true })
set_hl(0, "StatusInsert", { fg = cp.base, bg = cp.green, bold = true })
set_hl(0, "StatusVisual", { fg = cp.base, bg = cp.peach, bold = true })
set_hl(0, "StatusReplace", { fg = cp.base, bg = cp.yellow, bold = true })
set_hl(0, "StatusCmd", { fg = cp.base, bg = cp.mauve, bold = true })
set_hl(0, "StatusTerminal", { fg = cp.base, bg = cp.flamingo, bold = true })

-- other colors
set_hl(0, "StatusPath", { fg = cp.text, bg = cp.base })
set_hl(0, "StatusDiag", { fg = cp.text, bg = cp.mantle })
set_hl(0, "StatusFiletype", { fg = cp.mauve, bg = cp.crust })

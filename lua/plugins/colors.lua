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

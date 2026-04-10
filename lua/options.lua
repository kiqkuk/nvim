-- lua/options/lua

local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2

opt.termguicolors = true

opt.completeopt = { "menuone", "popup", "noinsert", "nearest" }

-- popup menu
opt.pumborder = "rounded"

opt.signcolumn = "yes"
opt.updatetime = 250

-- sane undo
opt.undofile = true

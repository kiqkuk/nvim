-- lua/lsp.lua

local lsp = vim.lsp

lsp.enable("clangd")
lsp.enable("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"

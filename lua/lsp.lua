-- lua/lsp.lua

local lsp = vim.lsp

lsp.config.clangd = {
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = vim.fs.root(0, { ".git", "compile_commands.json", "build", "Makefile" }),
}

lsp.config.lua_ls = {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_dir = vim.fs.root(0, { ".git", "init.lua" }),
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}

lsp.config.pyright = {
  cmd = {
    "pyright-langserver",
    "--stdio",
  },
  filetypes = { "python" },
  root_dir = vim.fs.root(0, { ".git", "setup.py", "pyproject.toml", "requirements.txt" }),
}

lsp.enable("clangd")
lsp.enable("lua_ls")
lsp.enable("pyright")

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local client = lsp.get_client_by_id(ev.data.client_id)
    if client and client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id)
    end

    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
  end,
})

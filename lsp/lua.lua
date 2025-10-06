local lsp = require("util")

return {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      diagnostic = { global = "vim" },
      workspace = {
        maxPreload = 2000,
        preloadFileSize = 150,
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

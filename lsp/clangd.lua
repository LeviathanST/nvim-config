local lsp = require("util")

return {
  cmd = { "clangd" },
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
  filetypes = { "cpp", "c" },
}

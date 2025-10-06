local lsp = require("util")
return {
  cmd = { "rust-analyzer" },
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
  filetypes = { "rs" },
}

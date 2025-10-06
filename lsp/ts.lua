local lsp = require("util")
return {
  cmd = { "typescript-language-server", "--stdio" },
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
  filetypes = { "ts" },
  root_markers = { "node_modules", ".git" },
}

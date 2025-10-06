local lsp = require("util")
return {
  cmd = { "kotlin-language-server" },
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
}

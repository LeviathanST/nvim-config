local lsp = require("util")
return {
  cmd = { "sqls" },
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
  filetypes = { "sql" },
}

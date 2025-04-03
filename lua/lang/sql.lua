local lsp = require("lang.lsp")
return {
  lsp_server = "sqls",
  lsp = {
    on_attach = lsp.on_attach,
    capabilities = lsp.capabilities,
  },
  filetypes = { "sql" },
}

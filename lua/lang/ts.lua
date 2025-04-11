local lsp = require("lang.lsp")
return {
  lsp_server = "ts_ls",
  lsp = {
    on_attach = lsp.on_attach,
    capabilities = lsp.capabilities,
  },
}

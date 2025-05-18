local lsp = require("lang.lsp")
return {
  lsp_server = "kulala-ls",
  lsp = {
    on_attach = lsp.on_attach,
    capabilities = lsp.capabilities,
  },
}

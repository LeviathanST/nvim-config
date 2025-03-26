local lsp = require("lang.lsp")
return {
  lsp_server = "kotlin_language_server",
  lsp = {
    on_attach = lsp.on_attach,
    capabilities = lsp.capabilities,
  },
}

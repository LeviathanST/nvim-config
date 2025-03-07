local lsp = require("lang.lsp")

return {
  lsp_server = "clangd",
  lsp = {
    on_attach = lsp.on_attach,
    capabilities = lsp.capabilities,
  },
}

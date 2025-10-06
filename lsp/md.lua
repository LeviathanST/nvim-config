local lsp = require("util")
return {
  cmd = { "marksman" },
  lsp = {
    on_attach = lsp.on_attach,
    capabilities = lsp.capabilities,
  },
}

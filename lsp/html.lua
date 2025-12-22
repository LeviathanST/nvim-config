local lsp = require("util")
return {
  cmd = { "superhtml", "lsp" },
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
  filetypes = { "html", "superhtml" },
  root_markers = { "zine.ziggy" },
}

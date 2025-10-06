local lsp = require("util")

return {
  cmd = { "svelteserver", "--stdio" },
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
  filetypes = { "svelte" },
  root_markers = {
    "node_modules",
    ".git",
  },
}

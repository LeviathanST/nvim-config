local lsp = require("util")

return {
  cmd = { "basedpyright-langserver", "--stdio" },
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
  filetypes = { "python" },
  root_markers = { "requirements.txt", ".git" },
  settings = {
    basedpyright = {
      analysis = {
        extraPaths = { "./src" },
        typeCheckingMode = "strict",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace",
      },
    },
  },
}

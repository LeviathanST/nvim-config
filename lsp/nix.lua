-- This lsp is intended to build from source (required depedencies are listed in github)
-- via:
-- ```sh
-- cargo install --git https://github.com/oxalica/nil nil
-- ```
local lsp = require("util")

local nil_bin = os.getenv("HOME") .. "/.cargo/bin/nil"

return {
  cmd = { nil_bin },
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
  filetypes = { "nix" },
}

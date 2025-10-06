local lsp = require("util")

return {
  lsp_server = "clangd",
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
  dap = "codelldb",
  dap_config = {
    dap = {
      type = "server",
      port = "${port}",
      executable = {
        command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
        args = { "--port", "${port}" },
      },
    },
    lang = {
      {
        name = "Debug Test",
        type = "codelldb",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", "${workspaceFolder}/", "file")
        end,
        cwd = "${workspaceFolder}",
      },
    },
  },
}

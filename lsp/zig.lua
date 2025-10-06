local lsp = require("util")

return {
  cmd = { "zls" },
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
  settings = {
    inlay_hints_show_parameter_name = true,
  },
  filetypes = { "zig" },
  root_markers = {
    "build.zig",
    "build.zig.zon",
  },
  -- dap = "codelldb",
  -- dap_config = {
  --   dap = {
  --     type = "server",
  --     port = "${port}",
  --     executable = {
  --       command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
  --       args = { "--port", "${port}" },
  --     },
  --   },
  --   lang = {
  --     {
  --       name = "Debug Test",
  --       type = "codelldb",
  --       request = "launch",
  --       program = function()
  --         return vim.fn.input("Path to executable: ", "${workspaceFolder}/", "file")
  --       end,
  --       cwd = "${workspaceFolder}",
  --     },
  --   },
  -- },
}

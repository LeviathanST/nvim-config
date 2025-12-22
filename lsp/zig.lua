local lsp = require("util")

return {
  cmd = { "zls" },
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
  filetypes = { "zig" },
  root_markers = {
    "build.zig",
    "build.zig.zon",
  },
  settings = {
    ["zls"] = {
      inlay_hints_show_parameter_name = true,
      inlay_hints_show_struct_literal_field_type = true,
      inlay_hints_show_variable_type_hints = true,
      warn_style = true,
      enable_build_on_save = true,
      build_on_save_step = "check",
    },
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

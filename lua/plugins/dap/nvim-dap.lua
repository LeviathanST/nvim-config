return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local languages = require("lang.lang")
    local dap_settings = require("settings").dap_config
    local filetypes = dap_settings.filetypes

    local dap = require("dap")
    local dapui = require("dapui")

    local map = vim.keymap.set

    dapui.setup()
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    for _, filetype in ipairs(filetypes) do
      local lang = languages[filetype]
      dap.adapters[lang.dap] = lang.dap_config.dap
      dap.configurations[filetype] = lang.dap_config.lang
    end

    map("n", "<leader>dt", "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", { noremap = true })
    map("n", "<leader>dc", "<Cmd>lua require'dap'.continue()<CR>", { noremap = true })
    map("n", "<leader>dT", "<Cmd>lua require'dap'.terminate()<CR>", { noremap = true })
  end,
}

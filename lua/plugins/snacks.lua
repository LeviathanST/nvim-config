return {
  "folke/snacks.nvim",
  opts = {
    input = {
      enabled = true,
    },
    indent = {
      enabled = true,
    },
    notifier = {
      enabled = true,
    },
    animate = {
      enabled = vim.fn.has("nvim-0.10") == 1,
      style = "out",
      easing = "linear",
      duration = {
        step = 20, -- ms per step
        total = 500, -- maximum duration
      },
    },
  },
  keys = {
    --- NOTE: Find
    {
      "<leader>fc",
      function()
        Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
      end,
      desc = "Find Config File",
    },
    --- NOTE: Search
    {
      "<leader>sk",
      function()
        Snacks.picker.keymaps()
      end,
      desc = "Keymaps",
    },
    {
      "<leader>sf",
      function()
        Snacks.picker.files()
      end,
      desc = "Find Files",
    },
    --- NOTE: Other
    {
      "<leader>t",
      function()
        Snacks.terminal()
      end,
      desc = "Toggle Terminal",
    },
    --- NOTE: LSP
    {
      "gr",
      function()
        Snacks.picker.lsp_references()
      end,
      desc = "Goto References",
    },
  },
}

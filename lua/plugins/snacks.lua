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
      enabled = true,
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
        Snacks.picker.files({
          cwd = vim.fn.getcwd(),
          confirm = function(_, item)
            local filename = item.text
            -- any way to open the file without triggering auto-close event of neo-tree?
            vim.cmd(":Neotree reveal_file=" .. filename)
            vim.cmd(":edit " .. filename)
            -- open the file
            vim.notify(
              "Open file path: " .. filename,
              vim.log.levels.INFO,
              { id = "neotree_opening", title = "Neotree" }
            )
          end,
        })
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

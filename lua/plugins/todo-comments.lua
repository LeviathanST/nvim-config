return {
  "folke/todo-comments.nvim",
  dependencies = {
    "folke/snacks.nvim",
    "nvim-lua/plenary.nvim",
  },
  opts = {},
  keys = {
    {
      "<leader>ft",
      function()
        Snacks.picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } })
      end,
      desc = "Todo/Fix/Fixme",
    },
  },
}

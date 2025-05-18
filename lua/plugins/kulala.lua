return {
  "mistweaverco/kulala.nvim",
  ft = { "http", "rest" },
  opts = {
    global_keymaps = {
      ["Send request <cr>"] = {
        "<leader>rr",
        function()
          require("kulala").run()
        end,
        mode = { "n", "v" },
        desc = "Send a request",
      },
    },
  },
}

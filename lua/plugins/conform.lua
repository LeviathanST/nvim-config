return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        c = { "clang_format" },
        kotlin = { "ktlint" },
        css = { "prettier" },
        html = { "prettier" },
      },
      format_on_save = {
        lsp_format = "fallback",
        timeout_ms = 3000,
      },
    })
  end,
}

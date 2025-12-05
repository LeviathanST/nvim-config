return {
  "stevearc/conform.nvim",
  event = { "BufEnter" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        c = { "clang_format" },
        kotlin = { "ktlint" },
        css = { "prettier" },
        html = { "prettier" },
        http = { "kulala-fmt" },
        python = { "ruff_format", "ruff_organize_import" },
      },
      format_on_save = {
        lsp_format = "fallback",
        timeout_ms = 3000,
      },
    })
  end,
}

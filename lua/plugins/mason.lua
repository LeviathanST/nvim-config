return {
  { "williamboman/mason.nvim", opts = {} },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls", --- lua
        "marksman", --- markdown
        "clangd", --- c/c++
        "kotlin_language_server", --- Kotlin
        "sqls", --- SQL
        "ts_ls", --- TS/JS
        "svelte", --- Svelte
      },
    },
  },
  {
    "williamboman/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = {
        "codelldb",
      },
    },
  },
  {
    "zapling/mason-conform.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "clang_format",
      },
    },
  },
}

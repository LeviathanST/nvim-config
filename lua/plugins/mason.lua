return {
  { "mason-org/mason.nvim", opts = {} },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls", --- lua
        "clangd", --- c/c++
        "sqls", --- SQL
        "basedpyright", --- python lsp
        "ruff", --- python linter, formatter
        "superhtml",
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

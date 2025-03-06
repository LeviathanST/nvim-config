return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "saghen/blink.cmp",
      {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
          library = { "lazy.nvim" },
        },
      },
    },
    config = function()
      local lspconfig = require("lspconfig")

      require("blink.cmp").setup({
        fuzzy = {
          implementation = "rust",
          prebuilt_binaries = { download = true },
        },
        completion = {
          documentation = { auto_show = true, auto_show_delay_ms = 500 },
          ghost_text = { enabled = true },
        },
      })

      local settings = require("settings")
      local setting_languages = require("lang.lang")
      local settings_lspconfig = settings.lsp_config

      local filetypes = settings_lspconfig.filetypes

      ---- Loading LSP which is contained in setting
      for _, filetype in ipairs(filetypes) do
        local language = setting_languages[filetype]
        lspconfig[language.lsp_server].setup(language.lsp)
      end
    end,
  },
}

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "saghen/blink.cmp", build = "cargo build --release" },
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
      local configs = require("lspconfig.configs")

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

      local setting_languages = require("lang.lang")
      local settings_lspconfig = require("settings").lsp_config

      local filetypes = settings_lspconfig.filetypes

      -- if not configs.minizls then
      --   configs.minizls = {
      --     default_config = {
      --       cmd = { "/home/leviathanst/workspaces/zig/mini-zls/zig-out/bin/tiny_zls" },
      --       root_dir = lspconfig.util.root_pattern("build.zig"),
      --       filetypes = { "zig" },
      --     },
      --   }
      -- end
      -- lspconfig.minizls.setup({})

      ---- Loading LSP which is contained in setting
      for _, filetype in ipairs(filetypes) do
        local language = setting_languages[filetype]
        lspconfig[language.lsp_server].setup(language.lsp)
      end
    end,
  },
}

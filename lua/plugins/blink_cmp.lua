return {
  "saghen/blink.cmp",
  build = "cargo build --release",
  opts = {
    keymap = {
      ["<C-leader>"] = {
        function(cmp)
          cmp.show({ providers = { "snippets" } })
        end,
      },
    },
    fuzzy = {
      implementation = "rust",
      prebuilt_binaries = { download = true },
    },
    completion = {
      documentation = { auto_show = true, auto_show_delay_ms = 0 },
      ghost_text = { enabled = false },
    },
  },
}

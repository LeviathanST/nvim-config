return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "lua", "c", "markdown", "kotlin", "svelte", "css", "html" },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },
  config = function()
    vim.filetype.add({ extension = { svelte = "svelte" } })
    vim.api.nvim_create_autocmd({ "BufEnter" }, {
      pattern = "*.svelte",
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}

local M = {}

M.on_attach = function(_, bufnr)
  local opts = { silent = true, noremap = true }
  local function buf_set_keymap(mode, mapping, command)
    vim.api.nvim_buf_set_keymap(bufnr, mode, mapping, command, opts)
  end

  buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>")
  buf_set_keymap("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>")
  buf_set_keymap("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>")
  buf_set_keymap("n", "<leader>rn", "<Cmd>lua vim.lsp.buf.rename()<CR>")
end
M.capabilities = require("blink.cmp").get_lsp_capabilities()
return M

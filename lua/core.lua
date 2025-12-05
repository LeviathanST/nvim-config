local settings = require("settings")
local filetypes = settings.lsp_config.filetypes

vim.lsp.enable(filetypes)

local settings = require("settings")
local filetypes = settings.lsp_config.filetypes

for _, filetype in ipairs(filetypes) do
  vim.lsp.enable(filetype)
end

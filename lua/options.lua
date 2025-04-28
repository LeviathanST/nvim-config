local opt = vim.opt

vim.diagnostic.config({ virtual_text = true })

--- NOTE: General
opt.clipboard = "unnamedplus"

-- NOTE: Local window
opt.number = true
opt.termguicolors = true
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.indentexpr = "nvim_treesitter#indentexpr()"

-- NOTE: Tabs, indent
opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 4 -- Shift 4 spaces when tab
opt.tabstop = 4 -- 1 tab == 4 spaces
opt.smartindent = false -- Autoindent new lines

--- NOTE: Local buffer
opt.swapfile = false

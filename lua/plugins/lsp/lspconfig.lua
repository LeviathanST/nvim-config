local WIDE_HEIGHT = 40
return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "iguanacucumber/mag-nvim-lsp", name = "cmp-nvim-lsp", opts = {} },
			"hrsh7th/cmp-path",
			{
				"iguanacucumber/magazine.nvim",
				name = "nvim-cmp",
				opts = {
					window = {
						completion = {
							border = { "", "", "", "", "", "", "", "" },
							winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None",
							scrollbar_winhighlight = "EndOfBuffer:PmenuSbar,NormalFloat:PmenuSbar",
							scrollbar_thumb_winhighlight = "EndOfBuffer:PmenuThumb,NormalFloat:PmenuThumb",
							winblend = vim.o.pumblend,
							scrolloff = 0,
							col_offset = 0,
							side_padding = 1,
							scrollbar = true,
						},
						documentation = {
							max_height = math.floor(WIDE_HEIGHT * (WIDE_HEIGHT / vim.o.lines)),
							max_width = math.floor((WIDE_HEIGHT * 2) * (vim.o.columns / (WIDE_HEIGHT * 2 * 16 / 9))),
							border = { "", "", "", " ", "", "", "", " " },
							winhighlight = "FloatBorder:NormalFloat",
							scrollbar_winhighlight = "EndOfBuffer:PmenuSbar,NormalFloat:PmenuSbar",
							scrollbar_thumb_winhighlight = "EndOfBuffer:PmenuThumb,NormalFloat:PmenuThumb",
							winblend = vim.o.pumblend,
							col_offset = 0,
						},
					},
				},
			},
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
			local cmp = require("cmp")

			local settings = require("settings")
			local setting_languages = require("lang.lang")
			local settings_lspconfig = settings.lsp_config

			local filetypes = settings_lspconfig.filetypes

			--- Completion
			cmp.setup({
				sources = {
					{ name = "nvim_lsp" }, -- LSP completions
					{ name = "path" }, -- Filesystem path completions
					{ name = "lazydev", group_index = 0 }, -- set group_index = 0 to skip loading LuaLS completions
				},
				mapping = {
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-Y>"] = cmp.mapping.confirm({ select = true }),
					["<C-n>"] = cmp.mapping.select_next_item(),
					["<C-p>"] = cmp.mapping.select_prev_item(),
				},
			})
			for _, filetype in ipairs(filetypes) do
				local language = setting_languages[filetype]
				lspconfig[language.lsp_server].setup(language.lsp)
			end
		end,
	},
}

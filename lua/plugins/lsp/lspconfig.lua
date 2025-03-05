return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"hrsh7th/nvim-cmp",
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

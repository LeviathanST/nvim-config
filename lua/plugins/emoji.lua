return {
	"allaman/emoji.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function(_, opts)
		require("emoji").setup(opts)
		local ts = require("telescope").load_extension("emoji")
		vim.keymap.set("n", "<leader>se", ts.emoji, { desc = "Search Emoji" })
	end,
}

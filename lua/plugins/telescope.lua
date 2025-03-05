return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local builtin = require("telescope.builtin")
		local map = vim.keymap.set

		map("n", "<leader>sf", builtin.find_files, { desc = "Search File in cwd" })
		map("n", "<leader>sk", builtin.keymaps, { desc = "Search Keymaps" })
	end,
}

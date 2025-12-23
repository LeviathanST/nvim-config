local function getTelescopeOpts(state, path)
  return {
    cwd = path,
    search_dirs = { path },
    attach_mappings = function(prompt_bufnr, _)
      local actions = require("telescope.actions")
      actions.select_default:replace(function()
        actions.close(prompt_bufnr)
        local action_state = require("telescope.actions.state")
        local selection = action_state.get_selected_entry()
        local filename = selection.filename
        if filename == nil then
          filename = selection[1]
        end
        -- any way to open the file without triggering auto-close event of neo-tree?
        require("neo-tree.sources.filesystem").navigate(state, state.path, filename)
        -- open the file
        vim.cmd("edit " .. state.path .. filename)
      end)
      return true
    end,
  }
end

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  opts = {
    filesystem = {
      window = {
        mappings = {
          ["<leader>sf"] = "telescope_find",
          ["<leader>sg"] = "telescope_grep",
        },
      },
      filtered_items = {
        hide_by_name = {
          "node_modules",
          ".git",
          "zig_cache",
        },
      },
      follow_current_files = {
        enabled = true,
        leave_dirs_open = true,
      },
      commands = {
        telescope_find = function(state)
          require("telescope.builtin").find_files(getTelescopeOpts(state, vim.fn.getcwd()))
        end,
        telescope_grep = function(state)
          require("telescope.builtin").live_grep(getTelescopeOpts(state, vim.fn.getcwd()))
        end,
      },
    },
  },
  keys = {
    { "E", ":Neotree toggle<CR>", desc = "Toggle reveal neotree" },
  },
}

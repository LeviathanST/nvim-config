# Introduction
- This is my personal dotfiles, open-sourced for
anyone who share my passion for customization and
Neovim. I hope this project fosters collaboration
-- fell free to contribute through pull request or
open issues to discuss ideas and improvements. My
goal is create a Neovim config tailored to my
needs while keeping it free and accessible for
everyone to use and enhances together.
# Features
- Colorscheme [Tokyonight](https://github.com/folke/tokyonight.nvim)
- Filesystem sidebar [NeoTree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- Plugin manager [LazyNvim](https://github.com/folke/lazy.nvim)
- Formatter [Conform](https://github.com/stevearc/conform.nvim)
- LSP completion [blink.cmp](https://github.com/Saghen/blink.cmp)
- Fuzzy finder with beautiful UI [Snacks ecosystem](https://github.com/folke/snacks.nvim)
- Smooth scrolling [Neoscroll](https://github.com/karb94/neoscroll.nvim)
- Indent [Snacks.indent](https://github.com/folke/snacks.nvim/blob/main/docs/indent.md)
# Structure
```
~/.config/nvim/
├── init.lua                   # Entry point
└── lua/                       # All Lua source code
    ├── options.lua            # General options (e.g., vim.opt)
    ├── keymaps.lua            # Global keybindings
    ├── settings.lua           # Settings definition (filetytes for LSP)
    ├── colorsheme.lua         # Colorscheme setup
    ├── plugins/               # Plugin management
    │   ├── lsp/               # Plugins and setup for LSP
    │   │    ├── lspconfig.lua 
    │   │    └── mason.lua     
    │   └── ...                # All plugins
    ├── user/                  # Personal setup
    │   └── colorschemes/      # All colorschemes
    └── lang/                  # Language-specific LSP configs
        ├── lang.lua           # All language definitions
        ├── lsp.lua            # General LSP config (capabilities, on_attach)
        └── lua.lua            # Lua LSP (lua-language-server)
```
# Which technology ecosystem I use this with
- Lua:
    - Neovim config
- C
# References
A beauty config neovim from scratch: 
- [config1](https://github.com/Nguyen-Hoang-Nam/nvim-dotfiles-kitty)
- [config1](https://github.com/caarlos0/dotfiles)

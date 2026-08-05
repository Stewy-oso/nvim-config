# Neovim Config

My personal Neovim setup running on Debian GNU/Linux 13 (trixie) x86_64.

This repository documents how I built and configured my Neovim environment,
including compatibility fixes required due to Debian's stable package versions.

## Environment

- OS: Debian GNU/Linux 13 (trixie) x86_64
- Neovim: 0.10.4
- Plugin manager: lazy.nvim

## Requirements

- Neovim 0.10.4
- ripgrep
- tree-sitter-cli

## Plugins

- lazy.nvim
- nvim-treesitter
- telescope.nvim
- oil.nvim
- lualine.nvim
- which-key.nvim
- tokyonight.nvim

## Configuration Structure
```text
nvim/
├── init.lua
└── lua/
    ├── config/
    │   ├── options.lua
    │   └── keymaps.lua
    └── plugins/
        ├── telescope.lua
        ├── treesitter.lua
        ├── colorscheme.lua
        ├── lualine.lua
        ├── which-key.lua
        └── oil.lua
```
### Troubleshooting
```error
E5113: no parser for 'lua' language, see :help treesitter-parsers
```

I encountered this issue because Debian 13 currently ships Neovim 0.10.4.

The latest `nvim-treesitter` release targets newer Neovim versions than available to Debian for now. According to the
`nvim-treesitter` repository, Neovim 0.10.x should use the older compatible branch,
while the latest release targets Neovim 0.12+.

You can find it [here](https://github.com/nvim-treesitter/nvim-treesitter/blob/master/README.md)

---
The latest version of Telescope also requires a newer Neovim release.

To resolve this, I pinned Telescope to a version compatible with Neovim 0.10.4.


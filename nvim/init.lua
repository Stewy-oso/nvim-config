-- Set leader key

vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

-- Load basic settings
require("config.options")
require("config.keymaps")
-- Load plugins
require("lazy").setup({
    require("plugins.colorscheme"),
    require("plugins.lualine"),
    require("plugins.oil"),
    require("plugins.telescope"),
    require("plugins.which-key"),
    require("plugins.treesitter"),
})

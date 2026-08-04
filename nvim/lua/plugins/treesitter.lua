return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "lua",
                "vim",
                "vimdoc",
                "query",
                "bash",
                "html",
                "css",
                "javascript",
                "php",
                "python",
                "java",
                "arduino",
                "git_config",
            },
            highlight = {
                enable = true,
            },
        })
    end,
}

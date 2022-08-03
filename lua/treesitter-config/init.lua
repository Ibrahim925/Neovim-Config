require("nvim-treesitter").setup {
    ensure_installed = "all", 
    sync_install = false, 
    ignore_install = { "phpdoc" },
    matchup = {
        enable = true,
    },
    highlight = {
        enable = true,
        disable = { "markdown" }, 
    },
    autopairs = {
        enable = true,
    },
    indent = { enable = true, disable = { "python", "css", "rust" } },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
    autotag = {
        enable = true,
        disable = { "xml", "markdown" },
    },
    rainbow = {
        enable = true,
        colors = {
            "#68a0b0",
            "#946EaD",
            "#c7aA6D",
        },
        disable = { "html" },
    },
}
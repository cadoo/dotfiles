require'nvim-treesitter.configs'.setup {
    ensure_installed = { 
        "astro", "css", "comment", "diff", "graphql", 
        "html", "javascript", "json", "lua",
        "markdown", "php", "pug", "scss", "typescript", "vue", "yaml" },

    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = 'gnn',
            node_incremental = 'grn',
            scope_incremental = 'grc',
            node_decremental = 'grm',
        },
    },
}

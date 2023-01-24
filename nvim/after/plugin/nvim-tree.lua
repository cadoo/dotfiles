require('nvim-tree').setup({
    view = {
    },
    renderer = {
        icons = {
            show = {
                folder_arrow = false,
            }
        }
    }
})

vim.keymap.set('n', '<leader>n', ':NvimTreeFocus<CR>')

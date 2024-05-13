require('bufferline').setup({
    highlights = {
        buffer_selected = {
            italic = false,
        },
        separator = {
            fg = '#111111',
        },
    },
    options = {
        indicator = {
            icon = ' ',
        },
        show_close_icon = false,
        show_buffer_close_icons = false,
        tab_size = 0,
        max_name_length = 25,
        offsets = {
            {
                filetype = 'NvimTree',
                text = '  Files',
                highlight = 'StatusLine',
                text_align = 'left',
            },
        },
        separator_style = 'thin',
        modified_icon = '',
        custom_areas = {
            left = function()
                return {
                    { text = '    ', fg = '#8fff6d' },
                }
            end,
        },
    },
})

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'onenord',
    },
    sections = {
        -- Shows path of file on lualine
        lualine_a = {
            { 
                'filename',
                path = 1, 
            }
        }
    }
}


-- This is where we will configure our LSP
local lsp = require('lsp-zero')

-- Here i have access to <leader>gd which allows me to "go to definition"

lsp.preset('recommended')

lsp.set_preferences({
    sign_icons = { }
})

lsp.setup()

--require('mason').setup()
--require('mason-lspconfig').setup({
--    ensure_installed = { 'sumneko_lua' }
--})
--
--local on_attach = function(_, _)
--    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
--    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
--
--    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
--    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
--    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
--    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
--end

--require('lspconfig').sumneko_lua.setup({
--    on_attach = on_attach
--})

-- This is where we will configure our LSP
local lsp = require('lsp-zero')

-- Here i have access to <leader>gd which allows me to "go to definition"

lsp.preset('recommended')

--lsp.set_preferences({
--    sign_icons = { }
--})

lsp.setup()

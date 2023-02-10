
-- These are keymaps for telescope (remember ff by 'find files')

local builtin = require('telescope.builtin')

-- Find files
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- File Search
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

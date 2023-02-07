-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- setup
require("nvim-tree").setup({
  filters = {
    -- allow dot files
    dotfiles = false,
  },
})

vim.keymap.set('n', '<leader>pv', ':NvimTreeFindFileToggle<CR>')

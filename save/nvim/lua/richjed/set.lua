
--Here I will setup all my personal vim settings

-- This makes the cursor fat (Me likey...)
vim.opt.guicursor = ""

-- This sets line numbers and relativenumber
vim.opt.nu = true
vim.opt.relativenumber = true

-- This is for tabstop (4 space indent)
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- This sets smartindent
vim.opt.smartindent = true

-- This allows undotree to have access to a long list of backups 
-- It also disables vim from making backups
-- (<leader>u to open undotree)
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- This give me highlight search but disables the highlight from staying 
-- after search
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- Makes so the file will always have 8 lines on top and bottom when scrolling 
-- (except at eof)
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- Fast updatetime
vim.opt.updatetime = 50

-- Puts a column in the file to help keep away from long comments 
vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

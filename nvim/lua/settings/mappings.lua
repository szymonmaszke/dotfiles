-- Map bnext to alt + l
-- Map bprev to alt + h

vim.api.nvim_set_keymap('n', '<A-l>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-h>', ':bprev<CR>', {noremap = true, silent = true})

-- Map closing buffer to alt + j
vim.api.nvim_set_keymap('n', '<A-j>', ':bdelete<CR>', {noremap = true, silent = true})

-- Map path copy of current buffer to Alt + k
vim.api.nvim_set_keymap('n', '<A-k>', ':let @+=expand("%:p")<CR>', {noremap = true, silent = true})

-- Map <leader> to space
vim.g.mapleader = ' '

-- Map <leader>q to quit
vim.api.nvim_set_keymap('n', '<leader>q', ':wq<CR>', {noremap = true, silent = true})
-- Map <leader>w to write
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {noremap = true, silent = true})

require("hop").setup{}

-- This is neovim config file
-- Map command HopWord to Leader + f
vim.api.nvim_set_keymap('n', '<Leader>f', ':HopWord<CR>', {noremap = true, silent = true})

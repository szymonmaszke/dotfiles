-- use lazy.nvim instead of packer.nvim
-- Check AstroNvim and its set of plugins
-- Check https://github.com/LunarVim/LunarVim/blob/master/lua/lvim/plugins.lua
-- https://github.com/goolord/alpha-nvim - custom greeter
-- https://github.com/nvim-tree/nvim-tree.lua
-- https://github.com/nvim-telescope/telescope.nvim
-- https://github.com/NvChad/nvim-colorizer.lua - display HTML colors
-- https://github.com/rcarriga/nvim-notify
-- Neovim LSP config for easier configuration
-- use "neovim/nvim-lspconfig"
-- LSP manager
-- use "williamboman/mason"
-- nvim-cmp
-- Mapping reminder https://github.com/folke/which-key.nvim
-- Improved indentation: https://github.com/NMAC427/guess-indent.nvim
-- Docs about init.lua and neovim built-in: https://github.com/folke/neodev.nvim
-- Multiple terminals: maybe a better solution than the one used currently? https://github.com/akinsho/toggleterm.nvim
-- Add mapping for <leader>q to quit the current buffer

require('packer').startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"
  use {
    'nvim-lualine/lualine.nvim',
    after = 'github-nvim-theme',
    config = function()
      require('lualine').setup {
        options = {
          theme = 'auto' -- or you can assign github themes individually.
          -- ... your lualine config
        }
      }
    end
  }
  use {
    'projekt0n/github-nvim-theme',
    config = function()
      require('github-theme').setup({
        -- your github config
      })
    end
  }
  -- Bufferline
  use {
    "akinsho/bufferline.nvim",
    tag = "v3.*",
    requires = "nvim-tree/nvim-web-devicons",
  }
  -- Commenting code out
  use "numToStr/Comment.nvim"
  -- Smooth scrolling <C-U> etc,
  use "karb94/neoscroll.nvim"
  -- CoPilot
  use "github/copilot.vim"
  -- Tressitter
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }
  -- Rainbow parentheses (tree sitter required)
  use "HiPhish/nvim-ts-rainbow2"
  -- Indentation lines
  use "lukas-reineke/indent-blankline.nvim"
  -- Better motion
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
  }
  -- Improved yank and paste
  use "gbprod/yanky.nvim"
  -- Git signs support
  use "lewis6991/gitsigns.nvim"
  use "cappyzawa/trim.nvim"
  --
  --
  -- TELESCOPE, TREESITTER, TROUBLE.NVIM, LSP-CONTAINERS
  --
  -- TO THINK ABOUT, NON-ESSENTIAL
  --
  -- Nvim file explorer
  -- use 'kyazdani42/nvim-tree.lua'
end)

require("plugins.bufferline")
require("plugins.Comment")
require("plugins.neoscroll")
require("plugins.nvim-treesitter")
require("plugins.nvim-ts-rainbow2")
require("plugins.indent-blankline")
require("plugins.hop")
require("plugins.yanky")
require("plugins.gitsigns")
require("plugins.trim")
-- https://github.com/mrjones2014/legendary.nvim

vim.cmd [[packadd packer.nvim]]
local status, packer = pcall(require, "packer")
if not status then
  print("Packer::Packer is not installed")
end

-- Reloads Neovim after whenever you save packer.lua
vim.cmd([[
    augroup packer_user_config
      autocmd!
     autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup END
]])


packer.startup(function(use)
    use('wbthomason/packer.nvim')
    use('folke/tokyonight.nvim')
    use('rose-pine/neovim')
    use ('nvim-tree/nvim-web-devicons')
    use ({ 'nvim-mini/mini.icons', version = '*' })
    use({"nvim-treesitter/nvim-treesitter", checkout = "main"})
    -- run = ":TSUpdate"
    use {
        'neovim/nvim-lspconfig',
        requires={
            {
                'mason-org/mason.nvim',
          },
          'mason-org/mason-lspconfig.nvim',
          'WhoIsSethDaniel/mason-tool-installer.nvim',
          { 'j-hui/fidget.nvim', opts = {} },
        }
    }
    use ('nvim-lua/plenary.nvim')
    use {
        'nvim-telescope/telescope.nvim', version= '*',
        requires = {
            'nvim-lua/plenary.nvim',
            {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
        }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use("theprimeagen/harpoon")
    use("theprimeagen/refactoring.nvim")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("folke/which-key.nvim")
    use("mfussenegger/nvim-dap")
    use{
        'saghen/blink.cmp', version='1.*',
        requires= {
          -- Snippet Engine
          {
            'L3MON4D3/LuaSnip',
            version = '2.*',
          },
        },
    }
    if not status then
        packer.sync()
    end
end)

vim.cmd [[packadd packer.nvim]]
local status, packer = pcall(require, "packer")
if not status then
    print("Packer is not installed")
    return
end

-- Reloads Neovim after whenever you save packer.lua
vim.cmd([[
    augroup packer_user_config
      autocmd!
     autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup END
]])

packer.startup(function(use)
    use('wbthomason/packer.nvim')
    use('folke/tokyonight.nvim')
    use('rose-pine/neovim')
    use({"mason-org/mason.nvim", opts={}})
    use ('nvim-tree/nvim-web-devicons')
    use ({ 'nvim-mini/mini.icons', version = '*' })
    use({"nvim-treesitter/nvim-treesitter", checkout = "main", run = ":tsupdate"})
    -- use 'neovim/nvim-lspconfig' -- configurations for nvim lsp
    use ('nvim-lua/plenary.nvim')
    use {
        'nvim-telescope/telescope.nvim', version= '*',
        dependencies= {
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
    if packer_bootstrap then
        packer.sync()
    end
end)

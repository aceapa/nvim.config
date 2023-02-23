vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
use 'wbthomason/packer.nvim'
use 'folke/tokyonight.nvim' 
use 'rose-pine/neovim'
use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
-- use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		 -- or                            , branch = '0.1.x',
		 requires = { {'nvim-lua/plenary.nvim'} }
}
use("theprimeagen/harpoon")
use("theprimeagen/refactoring.nvim")
use("mbbill/undotree")
use("tpope/vim-fugitive")
end)

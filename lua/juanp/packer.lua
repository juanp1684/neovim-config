-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
		'rose-pine/neovim',
		as = 'rose-pine',
	})
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use( 'nvim-treesitter/playground')
	use {

        ( 'ThePrimeagen/harpoon'),
        branch = 'harpoon2',
        requires = {{ 'nvim-lua/plenary.nvim' }}
    }
    -- use( 'mbbill/undotree')
    use( 'tpope/vim-fugitive')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lua'},

			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
    }
    use("github/copilot.vim")
    use("windwp/nvim-ts-autotag")
    use {
        "lewis6991/gitsigns.nvim",
        config = function() require("gitsigns").setup {} end
    }
    use {
      'tzachar/local-highlight.nvim',
      config = function() require('local-highlight').setup() end
  }
end)

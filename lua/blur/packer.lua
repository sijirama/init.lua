return require('packer').startup(function(use)

	--NOTE: packer
	use 'wbthomason/packer.nvim'

    --NOTE: colorizer
    use 'NvChad/nvim-colorizer.lua'
	
	--NOTE: telecope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    use 'ThePrimeagen/vim-be-good'
    --:VimBeGood to play
	
	--NOTE: todo-commentt
	    use {
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
				require("todo-comments").setup {}
		end}

	--NOTE: gruvbox
	use { "ellisonleao/gruvbox.nvim" }

    --NOTE: numb for number peeking 
    use 'nacro90/numb.nvim'


    --NOTE: kanagawa
	use { "rebelot/kanagawa.nvim" }


	--NOTE: treesitter
	use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
	
	--NOTE: devicons
	use 'kyazdani42/nvim-web-devicons'

	--NOTE: reticle
    use('tummetott/reticle.nvim')

	--NOTE: lualine
	    use {
              'nvim-lualine/lualine.nvim',
               requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	--NOTE: harpoon (For file navigation)
	use 'theprimeagen/harpoon'

	--NOTE: undotree
	use "mbbill/undotree"
	
	--NOTE: fugitive (For git, use <leader>gs)
	use "tpope/vim-fugitive"

	--NOTE: lsp settings
	use {
		  'VonHeikemen/lsp-zero.nvim',
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

	--NOTE: autopairs
	use  'windwp/nvim-autopairs'  

	--NOTE: indentation
	use "lukas-reineke/indent-blankline.nvim"

	--NOTE: live sever
	use 'manzeloth/live-server'
	
    --NOTE: nvim-ts-autotag
    use 'windwp/nvim-ts-autotag'

   --NOTE: nvim - tree 
    use {
        'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        --tag = 'gruvbox' -- optional, updated every week. (see issue #1193)
    }
    
    --NOTE: preetier
    use('neovim/nvim-lspconfig')
    use('jose-elias-alvarez/null-ls.nvim')
    use('MunifTanjim/prettier.nvim')

    --NOTE: zen mode
    use {
    "folke/zen-mode.nvim",
    config = function()
        require("zen-mode").setup {}
        end
    }


end)



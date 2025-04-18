--This file can be loaded by calling `lua require('plugins')` from your init.vim

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
        
	--[[ use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end		
	}) ]]--

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use ('ThePrimeagen/harpoon') -- file n
	use ('tpope/vim-fugitive') -- file n
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}
        use ('feline-nvim/feline.nvim')
        use ({
                'ellisonleao/gruvbox.nvim',
                as = 'gruvbox',
                config = function()
                        vim.cmd('colorscheme gruvbox')
                end
        })

        use ('eduardomosko/header42.nvim')
        use ('vim-airline/vim-airline')
	use ('vim-airline/vim-airline-themes') 


        -- lsp 
        use {
                "williamboman/mason.nvim",
                "williamboman/mason-lspconfig.nvim",
                "neovim/nvim-lspconfig",
        }
        use({'hrsh7th/nvim-cmp'})
        use({'hrsh7th/cmp-nvim-lsp'})
end)

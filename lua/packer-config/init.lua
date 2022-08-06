return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	--Greeting
	use({ "goolord/alpha-nvim", commit = "ef27a59e5b4d7b1c2fe1950da3fe5b1c5f3b4c94" })

	--Appearance
	use "EdenEast/nightfox.nvim"
	use "junegunn/rainbow_parentheses.vim"
	use "kyazdani42/nvim-web-devicons"
	use "lukas-reineke/indent-blankline.nvim"
	use "nvim-treesitter/nvim-treesitter"
	use "vim-airline/vim-airline"

	--Text editing--
	use "windwp/nvim-autopairs"
	use 'b3nj5m1n/kommentary'

	--LSP
	use "neovim/nvim-lspconfig"
	use "williamboman/nvim-lsp-installer"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-nvim-lua"
	use "jose-elias-alvarez/null-ls.nvim"

	-- Completion
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-cmdline"
	use "saadparwaiz1/cmp_luasnip"
	use "L3MON4D3/LuaSnip"
	use "rafamadriz/friendly-snippets"
	-- --

	--File management
	use "kyazdani42/nvim-tree.lua"
	use "airblade/vim-rooter"
	use "akinsho/bufferline.nvim"

	--Work flow
	use "tpope/vim-fugitive"
	use({ "akinsho/toggleterm.nvim", commit = "aaeed9e02167c5e8f00f25156895a6fd95403af8" })
	use({ "nvim-lua/plenary.nvim", commit = "968a4b9afec0c633bc369662e78f8c5db0eba249" })
	use({ "nvim-telescope/telescope.nvim", commit = "d96eaa914aab6cfc4adccb34af421bdd496468b0" })
	use({ "lewis6991/gitsigns.nvim", commit = "c18e016864c92ecf9775abea1baaa161c28082c3" })
	use({ "lewis6991/impatient.nvim", commit = "969f2c5c90457612c09cf2a13fee1adaa986d350" })
end)

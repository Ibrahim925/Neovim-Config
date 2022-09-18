return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	--Greeting
	use({ "goolord/alpha-nvim", commit = "ef27a59e5b4d7b1c2fe1950da3fe5b1c5f3b4c94" })

	--Appearance
	use("EdenEast/nightfox.nvim")
	use("vim-airline/vim-airline")
	use("vim-airline/vim-airline-themes")
	use("junegunn/rainbow_parentheses.vim")
	use("lukas-reineke/indent-blankline.nvim")
	use({ "kyazdani42/nvim-web-devicons", commit = "8d2c5337f0a2d0a17de8e751876eeb192b32310e" })
	use("nvim-treesitter/nvim-treesitter")

	--Text editing--
	use("b3nj5m1n/kommentary")
	use({ "windwp/nvim-autopairs", commit = "fa6876f832ea1b71801c4e481d8feca9a36215ec" })

	--LSP
	use({ "neovim/nvim-lspconfig", commit = "148c99bd09b44cf3605151a06869f6b4d4c24455" })
	use({ "williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6" })
	use({ "jose-elias-alvarez/null-ls.nvim", commit = "ff40739e5be6581899b43385997e39eecdbf9465" })

	-- Completion
	use("hrsh7th/cmp-cmdline")
	use({ "hrsh7th/nvim-cmp", commit = "df6734aa018d6feb4d76ba6bda94b1aeac2b378a" })
	use({ "hrsh7th/cmp-path", commit = "466b6b8270f7ba89abd59f402c73f63c7331ff6e" })
	use({ "L3MON4D3/LuaSnip", commit = "79b2019c68a2ff5ae4d732d50746c901dd45603a" })
	use({ "hrsh7th/cmp-buffer", commit = "62fc67a2b0205136bc3e312664624ba2ab4a9323" })
	use({ "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" })
	use({ "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" })
	use({ "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" })
	use({ "rafamadriz/friendly-snippets", commit = "d27a83a363e61009278b6598703a763ce9c8e617" })
	-- --

	--File management
	use("airblade/vim-rooter")
	use({ "akinsho/bufferline.nvim", commit = "c78b3ecf9539a719828bca82fc7ddb9b3ba0c353" })
	use({ "kyazdani42/nvim-tree.lua", commit = "bdb6d4a25410da35bbf7ce0dbdaa8d60432bc243" })

	--Work flow
	use("tpope/vim-fugitive")
	use({ "folke/todo-comments.nvim" })
	use({ "akinsho/toggleterm.nvim", commit = "aaeed9e02167c5e8f00f25156895a6fd95403af8" })
	use({ "nvim-lua/plenary.nvim", commit = "968a4b9afec0c633bc369662e78f8c5db0eba249" })
	use({ "nvim-telescope/telescope.nvim", commit = "d96eaa914aab6cfc4adccb34af421bdd496468b0" })
	use({ "lewis6991/gitsigns.nvim", commit = "c18e016864c92ecf9775abea1baaa161c28082c3" })
	use({ "lewis6991/impatient.nvim", commit = "969f2c5c90457612c09cf2a13fee1adaa986d350" })
end)

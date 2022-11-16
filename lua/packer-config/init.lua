return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	--Greeting
	use("goolord/alpha-nvim")

	--Appearance
	use("EdenEast/nightfox.nvim")
	use("morhetz/gruvbox")
	use("ful1e5/onedark.nvim")
	use("vim-airline/vim-airline")
	use("vim-airline/vim-airline-themes")
	use("junegunn/rainbow_parentheses.vim")
	use("lukas-reineke/indent-blankline.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("nvim-treesitter/nvim-treesitter")
	use("aktersnurra/no-clown-fiesta.nvim")
	use("folke/tokyonight.nvim")
	use("savq/melange")
	use("sainnhe/everforest")
	use("sainnhe/gruvbox-material")

	--Text editing--
	use("b3nj5m1n/kommentary")
	use("windwp/nvim-autopairs")

	--LSP
	use("neovim/nvim-lspconfig")
	use("williamboman/nvim-lsp-installer")
	use("jose-elias-alvarez/null-ls.nvim")

	-- Completion
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-path")
	use("L3MON4D3/LuaSnip")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
	-- --

	--File management
	use("airblade/vim-rooter")
	use("akinsho/bufferline.nvim")
	use("kyazdani42/nvim-tree.lua")

	--Work flow
	use("tpope/vim-fugitive")
	use("folke/todo-comments.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use("lewis6991/gitsigns.nvim")
	use("lewis6991/impatient.nvim")
end)

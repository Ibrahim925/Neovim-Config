return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    --Appearance
    use { "EdenEast/nightfox.nvim", tags="v0.1.0" }
    use "junegunn/rainbow_parentheses.vim"
    use "kyazdani42/nvim-web-devicons"
    use "lukas-reineke/indent-blankline.nvim"
    use "nvim-treesitter/nvim-treesitter"
    use "vim-airline/vim-airline"

    --Text editing--
    use "windwp/nvim-autopairs"

	--LSP
	use "neovim/nvim-lspconfig"
	use "williamboman/nvim-lsp-installer"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-nvim-lua"

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
    use "ctrlpvim/ctrlp.vim"
    use "tpope/vim-fugitive"
end)

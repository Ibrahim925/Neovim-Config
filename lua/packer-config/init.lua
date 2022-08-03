return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    --Appearance
    use "doums/darcula"
    use "junegunn/rainbow_parentheses.vim"
    use "kyazdani42/nvim-web-devicons"
    use "lukas-reineke/indent-blankline.nvim"
    use "nvim-treesitter/nvim-treesitter"
    use "vim-airline/vim-airline"
    --Text editing
    use "windwp/nvim-autopairs"
    --File management
    use "kyazdani42/nvim-tree.lua"
    use "airblade/vim-rooter"
    use "akinsho/bufferline.nvim"
    --Work flow
    use "ctrlpvim/ctrlp.vim"
    use "tpope/vim-fugitive"
end)
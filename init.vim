set mouse=nicr
set nocompatible
set number

call plug#begin('~/.config/nvim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'tpope/vim-fugitive'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'doums/darcula'
    Plug 'jiangmiao/auto-pairs'
	Plug 'vim-airline/vim-airline'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
	Plug 'folke/tokyonight.nvim'
call plug#end()

lua <<EOF
require("nvim-tree").setup({
  sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})

require("bufferline").setup({
	offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
})
EOF

set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set termguicolors

inoremap jj <Esc>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

let mapleader = "\<Space>"
nnoremap <Leader>o :only<CR>
nnoremap <Leader>q :quit<CR>
nnoremap <Leader>w :write<CR>
nnoremap <Leader>f :NvimTreeToggle<CR>
nnoremap <silent><S-H> :BufferLineCycleNext<CR>
nnoremap <silent><S-L> :BufferLineCyclePrev<CR>

let g:coc_global_extensions = [
	\'coc-snippets',
	\'coc-pairs',
	\'coc-tsserver',
	\'coc-eslint',
	\'coc-prettier',
	\'coc-json',
	\'coc-go',
	\'coc-python',
	\'coc-emmet',
	\]

let g:tokyonight_style = "night"
colorscheme tokyonight

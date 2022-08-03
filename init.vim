call plug#begin('~/.config/nvim/plugged')
	"LSP
	Plug 'hashicorp/terraform-ls'
	Plug 'hashivim/vim-terraform'
	"Basic Config
    Plug 'doums/darcula'
    Plug 'jiangmiao/auto-pairs'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'lukas-reineke/indent-blankline.nvim'
	"File management
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'airblade/vim-rooter'
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
	"Workflow
    Plug 'ctrlpvim/ctrlp.vim'
	Plug 'vim-airline/vim-airline'
    Plug 'tpope/vim-fugitive'
call plug#end()

lua << EOF
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
	sync_root_with_cwd = true,
	diagnostics = {
		enable = true,
	}
})

require('bufferline').setup {
  options = {
    mode = "buffers", -- set to "tabs" to only show tabpages instead
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    name_formatter = function(buf) 
      if buf.name:match('%.md') then
        return vim.fn.fnamemodify(buf.name, ':t:r')
      end
    end,
    max_name_length = 18,
    max_prefix_length = 15, 
    tab_size = 18,
    diagnostics = "coc",
    diagnostics_update_in_insert = false,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "("..count..")"
    end,
    offsets = {{filetype = "NvimTree", text = "Workspace"}},
    color_icons = true,
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_buffer_default_icon = true, 
	show_close_icon = true,
    show_tab_indicators = false,
    persist_buffer_sort = true,
    separator_style = "slant",
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    sort_by = 'insert_after_current'
  }
}

require("nvim-treesitter").setup {
  ensure_installed = "all", 
  sync_install = false, 
  ignore_install = { "phpdoc" },
  matchup = {
    enable = true,
  },
  highlight = {
    enable = true,
    disable = { "markdown" }, 
  },
  autopairs = {
    enable = true,
  },
  indent = { enable = true, disable = { "python", "css", "rust" } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  autotag = {
    enable = true,
    disable = { "xml", "markdown" },
  },
  rainbow = {
    enable = true,
    colors = {
      "#68a0b0",
      "#946EaD",
      "#c7aA6D",
    },
    disable = { "html" },
  },
}
EOF

set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set termguicolors
set mouse=nicr
set nocompatible
set number
colorscheme darcula


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

let mapleader = "\<Space>"
inoremap jj <Esc>

nnoremap <Leader>h :wincmd h<CR> 
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>l :wincmd l<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>s :vsplit<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>f :NvimTreeFocus<CR>
nnoremap <Leader>F :NvimTreeToggle<CR>
nnoremap <Leader>H :BufferLineMovePrev<CR>
nnoremap <Leader>L :BufferLineMoveNext<CR>
nnoremap <silent><S-L> :BufferLineCycleNext<CR>
nnoremap <silent><S-H> :BufferLineCyclePrev<CR>
nnoremap <silent><leader>bd :<C-U>bprevious <bar> bdelete #<CR>

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P


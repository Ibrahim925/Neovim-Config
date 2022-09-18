local actions = require("telescope.actions")
vim.cmd("nnoremap <leader>ee <cmd>Telescope find_files<cr>")
vim.cmd("nnoremap <leader>ef <cmd>Telescope current_buffer_fuzzy_find<cr>")
vim.cmd("nnoremap <leader>eF <cmd>Telescope live_grep<cr>")

require("telescope").setup {
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
	mappings = {
	  i = {
		["<C-f>"] = actions.close,
	  },
	  n = {
		["<C-f>"] = actions.close,
	  }
	}
  },
}

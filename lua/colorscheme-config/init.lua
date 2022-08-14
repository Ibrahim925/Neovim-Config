require("nightfox").setup {
	options = {
		styles = {
			comments = "italic",
			keywords = "bold",
			types = "bold",
			transparent = false,
		},
	}
}

vim.cmd([[
	let g:airline_theme='angr'
	colorscheme nordfox
]])

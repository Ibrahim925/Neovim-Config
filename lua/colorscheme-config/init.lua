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

vim.cmd("colorscheme nordfox")

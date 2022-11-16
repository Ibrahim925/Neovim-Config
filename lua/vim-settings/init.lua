local set = vim.opt

set.number = true
set.termguicolors = true
set.smartindent = true
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.signcolumn = "yes"
set.mouse = "a"
vim.cmd [[
	highlight Cursor guifg=#4566a1 guibg=#4566a1
	highlight iCursor guifg=#4566a1 guibg=#4566a1
	set guicursor=n-v-c:block-Cursor
	set guicursor+=i:ver100-iCursor
	set guicursor+=n-v-c:blinkon0
	set guicursor+=i:blinkwait10
]]

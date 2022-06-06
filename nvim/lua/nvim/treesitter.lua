local configs = require("nvim-treesitter.configs")
configs.setup({
	ensure_installed = { "python", "lua" },
	sync_install = false,
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml" } },
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
})
vim.cmd("hi rainbowcol1 guifg=#FFFFFF")
vim.cmd("hi rainbowcol2 guifg=#00FF00")
vim.cmd("hi rainbowcol3 guifg=#2244FF")
vim.cmd("hi rainbowcol4 guifg=#FF0000")
vim.cmd("hi rainbowcol5 guifg=#FF00FF")
vim.cmd("hi rainbowcol6 guifg=#00FFFF")
vim.cmd("hi rainbowcol7 guifg=#FFFF00")

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
	indent = { enable = true, disable = { "yaml", "python" } },
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
if vim.o.background == "light" then
    vim.cmd("hi rainbowcol1 guifg=#000000")
else
    vim.cmd("hi rainbowcol1 guifg=#FFFFFF")
end
vim.cmd("hi rainbowcol2 guifg=#00FF00")
vim.cmd("hi rainbowcol3 guifg=#2244FF")
vim.cmd("hi rainbowcol4 guifg=#FF0000")
vim.cmd("hi rainbowcol5 guifg=#FF00FF")
vim.cmd("hi rainbowcol6 guifg=#00FFFF")
vim.cmd("hi rainbowcol7 guifg=#FFFF00")

local ts_context_status_ok, ts_context = pcall(require, "treesitter-context")
if not ts_context_status_ok then
	vim.notify("Error with require treesitter-context")
	return
end

ts_context.setup({
	enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
	max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
	patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
		-- For all filetypes
		-- Note that setting an entry here replaces all other patterns for this entry.
		-- By setting the 'default' entry below, you can control which nodes you want to
		-- appear in the context window.
		default = {
			"class",
			"function",
			"method",
			-- 'for', -- These won't appear in the context
			-- 'while',
			-- 'if',
			-- 'switch',
			-- 'case',
		},
		-- Example for a specific filetype.
		-- If a pattern is missing, *open a PR* so everyone can benefit.
		--   rust = {
		--       'impl_item',
		--   },
	},
	exact_patterns = {
		-- Example for a specific filetype with Lua patterns
		-- Treat patterns.rust as a Lua pattern (i.e "^impl_item$" will
		-- exactly match "impl_item" only)
		-- rust = true,
	},

	-- [!] The options below are exposed but shouldn't require your attention,
	--     you can safely ignore them.

	zindex = 20, -- The Z-index of the context window
})

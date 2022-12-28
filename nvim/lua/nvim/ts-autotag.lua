-- enable html parser in htmldjango file
local import_parsers, parsers = pcall(require, 'nvim-treesitter.parsers')
if import_parsers then
	local parsername = parsers.filetype_to_parsername
	parsername.htmldjango = 'html' 
	parsername.htmljinja = 'html' 
end


local import_tag, autotag = pcall(require, "nvim-ts-autotag")
if not import_tag then return end
autotag.setup({
	autotag = {
		enable = true,
	},
	filetypes = {
		'html', 'htmldjango',
	},
})

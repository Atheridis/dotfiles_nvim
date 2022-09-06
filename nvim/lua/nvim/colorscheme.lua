local status_ok, onedark = pcall(require, "onedark")
if not status_ok then
	vim.notify("Error with colorscheme")
	return
end

onedark.setup({
	style = "deep",
})
onedark.load()

-- vim.cmd('colorscheme paramount')
--
vim.cmd('set termguicolors')
vim.cmd('set background=dark')
-- vim.cmd('colorscheme zenbones')
--
-- vim.cmd("colorscheme nofrils-acme")

-- vim.cmd("let g:nofrils_heavylinenumbers=1")
-- vim.cmd("let g:nofrils_strbackgrounds=1")
-- vim.cmd("let g:nofrils_heavycomments=1")

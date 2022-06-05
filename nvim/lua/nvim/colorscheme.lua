local status_ok, onedark = pcall(require, "onedark")
if not status_ok then
	vim.notify("Error with colorscheme")
	return
end

onedark.setup({
	style = "deep",
})
onedark.load()

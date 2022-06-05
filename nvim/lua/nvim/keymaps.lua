local opts = { noremap = true, silent = true }

local function nnoremap(shortcut, command)
	vim.keymap.set("n", shortcut, command, opts)
end
local function inoremap(shortcut, command)
	vim.keymap.set("i", shortcut, command, opts)
end
local function vnoremap(shortcut, command)
	vim.keymap.set("v", shortcut, command, opts)
end
local function xnoremap(shortcut, command)
	vim.keymap.set("x", shortcut, command, opts)
end
local function tnoremap(shortcut, command)
	vim.keymap.set("t", shortcut, command, opts)
end

-- Define leader key
-- vim.api.nvim_set_keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- Sane Y behaviour
nnoremap("Y", "y$")

-- Better window navigation
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

nnoremap("<leader>e", ":NvimTreeToggle<CR>")

-- Resize
nnoremap("<M-h>", ":vertical resize -2<CR>")
nnoremap("<M-j>", ":resize +2<CR>")
nnoremap("<M-k>", ":resize -2<CR>")
nnoremap("<M-l>", ":vertical resize +2<CR>")

-- Navigate Buffers
nnoremap("<S-l>", ":bnext<CR>")
nnoremap("<S-h>", ":bprevious<CR>")

-- Quick ESC
inoremap("jk", "<ESC>")

-- Don't copy replaced text into register
-- while in visual mode, when pasting
vnoremap("p", '"_dP')

-- Move text up and down
vnoremap("<M-j>", ":m .+1<CR>==")
vnoremap("<M-k>", ":m .-2<CR>==")

xnoremap("J", ":move '>+1<CR>gv-gv")
xnoremap("K", ":move '<-2<CR>gv-gv")
xnoremap("<A-j>", ":move '>+1<CR>gv-gv")
xnoremap("<A-k>", ":move '<-2<CR>gv-gv")

-- Terminal --
-- Better terminal navigation
tnoremap("<C-h>", "<C-\\><C-N><C-w>h")
tnoremap("<C-j>", "<C-\\><C-N><C-w>j")
tnoremap("<C-k>", "<C-\\><C-N><C-w>k")
tnoremap("<C-l>", "<C-\\><C-N><C-w>l")

-- Telescope
nnoremap(
	"<leader>f",
	"<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>"
)
nnoremap("<C-t>", "<cmd>Telescope live_grep<CR>")

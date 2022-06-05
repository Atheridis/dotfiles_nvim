local options = {
    backup = false,
    clipboard = "unnamedplus",
    cmdheight = 1,
    completeopt = { "menuone", "noselect" },
    conceallevel = 0,
    fileencoding = "utf-8",
    hlsearch = false,
    showtabline = 4,
    pumheight = 10,
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    swapfile = false,
    termguicolors = true,
    timeoutlen = 1000,
    undofile = true,
    updatetime = 300,
    writebackup = false,
    expandtab = false,
    shiftwidth = 4,
    tabstop = 4,
    number = true,
    relativenumber = true,
    cursorline = true,
    numberwidth = 4,
    signcolumn = "yes",
    wrap = false,
    scrolloff = 8,
    sidescrolloff = 8,
    guifont = "monospace:h17",
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
    vim.opt[k] = v
end

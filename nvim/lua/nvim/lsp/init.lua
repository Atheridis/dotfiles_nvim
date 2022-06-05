local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    print("Error with lspconfig")
    return
end

require("nvim.lsp.lsp-installer")
require("nvim.lsp.handlers").setup()

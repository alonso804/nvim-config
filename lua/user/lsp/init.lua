local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

lspconfig.jedi_language_server.setup{}

require("user.lsp.configs")
require("user.lsp.handlers").setup()
require("user.lsp.null-ls")

-- Setting up CCLS c, c++ language server


local set_keymaps = require("lsp-configs.keymaps")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").clangd.setup({
  on_attach = set_keymaps,
  capabilities = capabilities
})

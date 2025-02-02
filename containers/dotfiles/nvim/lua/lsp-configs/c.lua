-- Setting up CCLS c, c++ language server

local lsp_settings = require("lsp-configs.settings")

require("lspconfig").clangd.setup(lsp_settings)

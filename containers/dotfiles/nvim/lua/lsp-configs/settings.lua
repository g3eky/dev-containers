-- Remove diagnostic icons on the left
vim.diagnostic.config({signs=false})


local set_keymaps = function(_, _)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})


  vim.keymap.set("n", "<F6>", vim.lsp.buf.definition, {})
  vim.keymap.set("n", "<F7>", vim.lsp.buf.implementation, {})
  vim.keymap.set("n", "<F8>", require("telescope.builtin").lsp_references, {})
  vim.keymap.set("n", "<F9>", vim.lsp.buf.hover, {})
end


local capabilities = require('cmp_nvim_lsp').default_capabilities()


return {
  set_keymaps = set_keymaps,
  capabilities = capabilities
}


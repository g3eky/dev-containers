-- Better syntax highlighting

return {
  "nvim-treesitter/nvim-treesitter",
  name = "treesitter",
  config = function ()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c" }
    })
  end
}

-- For auto pairing braces

return {
  "windwp/nvim-autopairs",
  name = "nvim-autopairs",
  config = function ()
    require("nvim-autopairs").setup({})
  end
}

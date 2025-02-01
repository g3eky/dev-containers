-- Provides Nerd Font icons for use by Neovim plugins

return {
  "nvim-tree/nvim-web-devicons",
  name = "dev-icons",
  config = function ()
   require("nvim-web-devicons").setup()
  end
}

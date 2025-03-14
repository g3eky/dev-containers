-- File explorer nvim tree

return {
  "nvim-tree/nvim-tree.lua",
  name = "nvim-tree",
  dependencies = { "nvim-tree/nvim-web-devicons", lazy=true },
  config = function ()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      disable_netrw = true,
      view = {
        -- side = "center",
        float = {
          enable = false,
          --[[ open_win_config = {
        row = 2,
        col = 4,
        border = "single",
        title = " Explorer ",
        title_pos = "center"
      } ]]
        }
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
        root_folder_label = false, -- This disables the root folder name
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = false,
          },
          glyphs = {
            folder = {
              -- arrow_closed = "",
              -- arrow_open = "",
              -- default = "󰉋",
              -- open = "",
              empty = "",
              empty_open = "",
              -- symlink = "",
              -- symlink_open = "",
            }
          },
        },
        special_files = {},
      },
      filters = {
        dotfiles = true,
        exclude = {".gitignore"}
      },
    })

    vim.keymap.set("n", "<F1>", ":NvimTreeToggle<CR>")
    vim.keymap.set("n", "<F13>", ":NvimTreeFindFile<CR>") -- Shift F1

    -- vim.highlight.create("NvimTreeIndentMarker", {ctermfg="Green", guifg="Red"}, false)
    -- Dracula theme
    -- vim.api.nvim_set_hl(0, "NvimTreeFolderName", {fg="#bd93f9", bg=nil})
    -- vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", {link="NvimTreeFolderName"})
    -- vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", {fg="#6272a4", bg=nil})
    -- vim.api.nvim_set_hl(0, "NvimTreeNormal", {fg="#f8f8f2", bg="#282a36"})
  end
}


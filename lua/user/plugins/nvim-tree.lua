-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

-- examples for your init.lua
-- disable netrw at the very start of your init.lua (strongly advised)

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

 -- Setup Nvim-tree

local status_ok, ntree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

ntree.setup({
  sort_by = "case_sensitive",

  view = {
    adaptive_size = true,
    width = 20,
 },
  
  git = {
    enable = true,
  },

  renderer = {
    group_empty = true,
    highlight_git = true,

    icons = {
        webdev_colors = true,
        git_placement = "before",
        padding = " ",
        symlink_arrow = " ➛ ",
        glyphs = {
            folder = {
                arrow_closed = "", -- arrow when folder is closed
                arrow_open = "", -- arrow when folder is open
            },
        },
        show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = false,
        },
    },
  },
  filters = {
    dotfiles = true,
  },
})
-- For more configurations visit https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt

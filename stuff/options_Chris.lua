local options = {
    
    

    signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
    guifont = "monospace:h17",               -- the font used in graphical neovim applications
    title = true,
    -- colorcolumn = "80",
    -- colorcolumn = "120",
  
  }
  -- vim.g.loaded_netrw = 1
  -- vim.g.loaded_netrwPlugin = 1
  -- vim.opt.fillchars.eob = " "
  -- vim.opt.fillchars = vim.opt.fillchars + "vertleft: "
  -- vim.opt.fillchars = vim.opt.fillchars + "vertright: "
  vim.opt.fillchars = vim.opt.fillchars + 'eob: '
  vim.opt.fillchars:append {
    stl = ' ',
  }
  
  vim.opt.shortmess:append "c"
  
  for k, v in pairs(options) do
    vim.opt[k] = v
  end
  
  vim.cmd "set whichwrap+=<,>,[,],h,l"
  vim.cmd [[set iskeyword+=-]]
  vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
  
  vim.filetype.add {
    extension = {
      conf = "dosini",
    },
  }
-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

local g = vim.g
local o = vim.opt

-- Genral options

g.fileencoding = "utf-8"            -- the encoding written to a file
o.termguicolors = true              -- set term gui colors (most terminals support this)
o.swapfile = false                  -- If true creates a swapfile
o.backup = false                    -- creates a backup file
--o.writebackup = false               -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
o.timeoutlen = 1000                 -- time to wait for a mapped sequence to complete (in milliseconds)
o.splitbelow = true                 -- force all horizontal splits to go below current window
o.splitright = true                 -- force all vertical splits to go to the right of current window

-- Useful settings

o.history = 700                     --A history of ":" commands, and a history of previous search patterns is remembered. 
o.undofile = true                   -- enable persistent undo
o.undolevels=700


-- Mouse, backspace and cursor

o.mouse = "a"                       -- on OSX press ALT and click
vim.cmd([[set guicursor= ]])        -- disable cursor block
o.scrolloff = 8                     -- is one of my fav
o.sidescrolloff = 8
o.bs= "2"                           -- make backspace behave like normal again
o.cursorline = true                 -- highlight the current line

-- Disable annoying beeping

--o.belloff = true                    -- Specifies for which events the bell will not be rung.

--APARENCIA

-- Global
o.title = true                    -- when on, the title of the window will be set to the value of 'titlestring' 
o.showmode = false                -- we don't need to see things like -- INSERT -- anymore
o.showcmd = false                 -- show (partial) command in the last line of the screen.
o.laststatus = 3                  -- have a global statusline at the bottom instead of one for each window
o.showtabline = 0                 -- always show tabs
o.cmdheight = 1                   -- more space in the neovim command line for displaying messages
o.ruler = false                   -- show the line and column number of the cursor position, separated by a comma. 

-- Showing line numbers, length and wrap

o.number = true                     -- show line numbers
o.relativenumber = false            -- set relative numbered lines
o.numberwidth = 4                   -- set number column width to 2 {default 4}
o.showbreak = ">>>"                 -- add ">>>" when line wrapping ex: "..." or "+++"
--o.textwidth = 79                    -- max. width of text in document (used by gd)
o.wrap = false                      -- if false don't automatically wrap on load  / -- display lines as one long line
o.wrapmargin = 4                    -- number of characters from the right window border where wrappingstarts.  When typing text beyond this limit, an <EOL> will be inserted and inserting continues on the next line.
o.formatoptions = "l"               -- don't automatically wrap text when typing
o.linespace = 4                     -- add some line space for easy reading
o.colorcolumn = "80"
--o.colorcolumn = "120"
--o.conceallevel = 0               -- so that `` is visible in markdown files



--vim.highlight.create('ColorColumn', {ctermbg=234, guibg=lightgrey}, false)
--highlight ColorColumn ctermbg=233
--vim.cmd [[highlight ColorColumn ctermbg=233]]

-- Real programmers don't use TABs but spaces

o.expandtab = true                   -- convert tabs to spaces
o.tabstop = 4                        -- indent using four spaces.
o.softtabstop = 4
o.shiftwidth = 4
o.shiftround = true                  -- when shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
o.autoindent = true                  -- new lines inherit the indentation of previous lines
o.smartindent = true                -- make indenting smarter again

-- SEARCH - Make search case insensitive

o.ignorecase = true                 -- ignore case in search patterns
o.smartcase = true                  -- if you have a pattern with at least one uppercase character, the search becomes case sensitive.
o.hlsearch = true                   -- highlight all matches on previous search pattern

-- USEFULL to PLUGINS

-- Nvim-tree

-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1


-- Usefull to Completation

vim.opt.completeopt = { "menu", "menuone", "noselect" }     -- mostly just for cmp
o.pumheight = 10                              -- pop up menu height
o.updatetime = 100                            -- faster completion (4000ms default)


-- TODO: Review

-- vim.opt.

vim.opt.iskeyword:append('-')               -- Set dash as word
-- vim.opt.shortmess:append "c"
-- vim.opt.fillchars:append {
--   stl = ' ',
-- }
-- vim.opt.fillchars.eob = " "
-- vim.opt.fillchars = vim.opt.fillchars + 'eob: '
-- vim.opt.fillchars = vim.opt.fillchars + "vertleft: "
-- vim.opt.fillchars = vim.opt.fillchars + "vertright: "

--vim.cmd "set whichwrap+=<,>,[,],h,l"



--
--
--    OTHER THINGS
-- ----------------------

-- set path+=**        " Enable search in sub-folders
-- set wildmenu        " Display all matching files when we tab complete
-- set nocompatible    " Use Vim settings, rather then Vi settings (much better!).

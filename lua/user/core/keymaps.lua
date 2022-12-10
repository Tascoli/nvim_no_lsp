-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

M = {}
local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap


--Remap space as leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- keymap("n", "<C-Space>", "<cmd>WhichKey \\<leader><cr>", opts)
-- keymap("n", "<C-i>", "<C-i>", opts)

-- Modes
--   Any_mode = "",
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Keys
-- <S-…>		shift-key			        *shift* *<S-*
-- <C-…>		control-key			        *control* *ctrl* *<C-*
-- <M-…>		alt-key or meta-key		    *META* *ALT* *<M-*
-- <A-…>		same as <M-…>			    *<A-*
-- <D-…>		command-key or "super" key	*<D-*
-- <CR>         Enter
-- <BS>         Backspace
-- <ESC>        Esc

-- INDETENTION
-- -------------
-- Set TAB and Shift-TAB

keymap("n","<Tab>",">>_", opts)
keymap("n","<S-Tab>","<<_", opts)
keymap("i","<S-Tab>","<C-D>", opts)
keymap("v","<Tab>",">gv", opts)
keymap("v","<S-Tab>","<gv", opts)

-- SAVE FINGERS

keymap('n', '<Leader>s', ':update<CR>', opts)   -- Save changes
keymap('n', '<Leader>q', ':quit<CR>', opts)     -- Quit Neovim


--      BIND NOHL
-- Removes highlight of your last search
-- ``<M>`` stands for ``Modify or Alt`` and therefore ``<M-l>`` stands for ``Alt+l``

keymap("","<M-l>","<ESC>:nohl<CR>", opts)       -- In any mode.
-- keymap("i","<M-l>","<ESC>:nohl<CR>", opts)
-- keymap("v","<M-l>","<ESC>:nohl<CR>", opts)
-- keymap("c","<M-l>","<ESC>:nohl<CR>", opts)

--   COPY AND PASTE
-- ----------------------

keymap("", '<Leader>y', '"+y', opts)        -- Copy to Clipboard
keymap("", '<Leader>p', '"+p', opts)        -- Paste from Clipboard
keymap("", '<Leader>Y', '"*y', opts)        -- Copy to Primary Area NOTE: It seems doesn't works
keymap("", '<Leader>P', '"*y', opts)        -- Paste from Primary Area NOTE: It seems doesn't works


-- Split it vertically.
-- Normal mode -> Ctrl + w, followed by the letter ‘v’.
-- Split it horizontally
-- Normal mode -> Ctrl + w, followed by the letter ‘s’.

-- Normal --
-- Better window navigation <M is Alt
keymap("n", "<M-h>", "<C-w>h", opts)
keymap("n", "<M-j>", "<C-w>j", opts)
keymap("n", "<M-k>", "<C-w>k", opts)
keymap("n", "<M-l>", "<C-w>l", opts)
-- keymap("n", "<C-tab>", "<c-6>", opts)

-- Better Escape
keymap("i", "jk", "<ESC>", opts)
keymap("c", "jk", "<ESC>", opts)

-- Visual
-- Move text up and down <A is Alt
keymap("", "<C-j>", "<ESC>v :m .+1<CR>==", opts)
keymap("", "<C-k>", "<ESC>v :m .-2<CR>==", opts)
-- In visual mode move text with J and K    NOTE: maybe better option
-- keymap("x", "J", ":move '>+1gv-gv", opts)
-- keymap("x", "K", ":move '<-2gv-gv", opts)


-- PLUGINS Keymaps

-- NVIM TREE

-- Open and Close NvimTree
keymap("n", "<Leader>e", ":NvimTreeToggle<cr>", opts)


-- BUFFERLINE

-- Navigate in Tabs
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)      -- Move next tab.
keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)      -- Move previous tab.
keymap('n', '<Leader>c', ':bdelete<CR>', opts)              -- Close Tab

-- Todo Comment
keymap('n', '<Leader>td', ':TodoLocList<CR>', opts)         -- Show Todo list in the project.
keymap('n', '<Leader>tt', ':TodoTelescope<CR>', opts)       -- Show Todo list in anywhere.

-- COMMENT

-- Comment with Alt or Cmd + /
--
vim.keymap.set('n', '<M-/>', 'gcc', {remap = true })
vim.keymap.set('i', '<M-/>', '<ESC>gcc', {remap = true })
vim.keymap.set('v', '<M-/>', 'gc', {remap = true })

-- TELESCOPE

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

return M


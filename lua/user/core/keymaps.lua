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

--      BIND NOHL
-- Removes highlight of your last search
-- ``<C>`` stands for ``CTRL`` and therefore ``<C-l>`` stands for ``CTRL+l``

keymap("n","<C-l>",":nohl<CR>", opts)
keymap("i","<C-l>",":nohl<CR>", opts)
keymap("v","<C-l>",":nohl<CR>", opts)


--   COPY AND PASTE
-- ----------------------


-- Copy to Clipboard
-- vnoremap <leader>y "+y
-- -- Paste from Clipboard
-- noremap <leader>p "+p
-- -- Copy to Primary Area
-- vnoremap <leader>Y "*y
-- -- Paste from Primary Area
-- noremap <leader>P "*p

keymap("", '<leader>y', '"+y', opts)       -- Copy to clipboard in normal, visual, select and operator modes
keymap("", '<leader>p', '"+p', opts)       -- Paste to clipboard in normal, visual, select and operator modes
keymap("", '<leader>Y', '"*y', opts)       -- Copy to clipboard in normal, visual, select and operator modes
keymap("", '<leader>P', '"*y', opts)       -- Paste to clipboard in normal, visual, select and operator modes


-- Split it vertically.
-- Normal mode -> Ctrl + w, followed by the letter ‘v’.
-- Split it horizontally 
-- Normal mode -> Ctrl + w, followed by the letter ‘s’. 

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-tab>", "<c-6>", opts)

-- Insert --
-- Better Escape
keymap("i", "jk", "<ESC>", opts)

-- Visual
-- Move text up and down <A is Alt
keymap("", "<A-j>", "<ESC>v :m .+1<CR>==", opts)
keymap("", "<A-k>", "<ESC>v :m .-2<CR>==", opts)

-- PLUGINS Keymaps

-- NVIM TREE
-- Open and Close NvimTree
keymap("n", "<Leader>e", ":NvimTreeToggle<cr>", opts)

-- COMMENT
--TODO need change 'gcc' to Ctrl + /
-- Comment with Ctrl + /
-- keymap("n", "<A-/>", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
-- keymap("x", "<C-/>", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>', opts)

--keymap('n', '<C-/>', '<Plug>(comment_toggle_linewise)', opts)
--keymap('x', '<A-?>', '<Plug>(comment_toggle_blockwise_visual)')

  --<Plug>(comment_toggle_linewise)*
  --<Plug>(comment_toggle_blockwise)*
return M

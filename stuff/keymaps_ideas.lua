-- FIXME:
-- Set a configuration to identify a OS and change a keymaps depending of OS

local ostype = vim.loop.os_uname().sysname:lower()

if os.execute('uname -s') == 'Darwin' then
    require ('user.core.mac-maps')
elseif os.execute('uname -s') == 'Linux' then
    require('user.core.linux-maps')
-- keymap("n", "<M-h>", "<C-w>h", opts)
-- keymap("n", "<M-j>", "<C-w>j", opts)
-- keymap("n", "<M-k>", "<C-w>k", opts)
-- keymap("n", "<M-l>", "<C-w>l", opts)
else
 print('Maybe its windows')
end
---------------
-- MAC OS Maps
--------------

-- Normal --
-- Better window navigation <M is Alt
keymap("n", "<D-h>", "<C-w>h", opts)
keymap("n", "<D-j>", "<C-w>j", opts)
keymap("n", "<D-k>", "<C-w>k", opts)
keymap("n", "<D-l>", "<C-w>l", opts)

-- COMMENT

-- Comment with Alt or Cmd + /
--

vim.keymap.set('n', '<D-/>', 'gcc', {remap = true })
vim.keymap.set('i', '<D-/>', '<ESC>gcc', {remap = true })
vim.keymap.set('v', '<D-/>', 'gc', {remap = true })

-------------
-- Linux --
------------

-- Normal --
-- Better window navigation <M is Alt
vim.api.nvim_set_keymap("n", "<M-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<M-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<M-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<M-l>", "<C-w>l", { noremap = true, silent = true })
-- keymap("n", "<C-tab>", "<c-6>", opts)

-- COMMENT

-- Comment with Alt or Cmd + /
--

vim.keymap.set('n', '<M-/>', 'gcc', {remap = true })
vim.keymap.set('i', '<M-/>', '<ESC>gcc', {remap = true })
vim.keymap.set('v', '<M-/>', 'gc', {remap = true })





-- local has = function(x)
--     return vim.fn.has(x) == 1
-- end
-- print(has())


-- local ostype = function()
--     return vim.loop.os_uname().sysname:lower()
-- end
--
-- if ostype == 'darwin' or 'mac' then
--     require ('user.core.mac_maps')
-- elseif ostype == 'linux' then
--     require ('user.core.linux_maps')
-- end

-- local ostype = vim.loop.os_uname().sysname:lower()
--
-- print(ostype)
--local myos = os.execute('uname -s')
--if myos == 'Linux' then
--   print 'Consegui'
--end
-- if ostype == 'darwin' or 'mac' then
--     require ('user.core.mac-maps')
-- elseif ostype == 'linux' then
--     print("YES!!")
-- end





--------------------------------
--        MEU .vimrc
--------------------------------


-- " Rebind <Leader> key
-- " By default leader key is \ (backslash)
-- " I like to have it here becuase it is easier to reach than the default and
-- " it is next to ``m`` and ``n`` which I use for navigating between tabs.
-- let mapleader = "\<space>"

--<S-…>		shift-key			*shift* *<S-*
--<C-…>		control-key			*control* *ctrl* *<C-*
--<M-…>		alt-key or meta-key		*META* *ALT* *<M-*
--<A-…>		same as <M-…>			*<A-*
--<D-…>		command-key or "super" key	*<D-*

-- "   BASIC SETUP
-- " -----------

-- " Automatic reloading of .vimrc
-- autocmd! bufwritepost .vimrc source %

-- " SHOW WHITHESPACE
-- " MUST be inserted BEFORE the colorscheme command

-- autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
-- " autocmd BufWinEnter * match ExtraWhitespace /^\s* \s*\|\s\+$/
-- autocmd InsertLeave * match ExtraWhitespace /\s\+$/


-- " Set colortheme for file type
-- " autocmd WinEnter,FileType * colorscheme wombat256mod
-- " autocmd WinEnter,FileType javascript colorscheme desert256
-- " autocmd WinEnter,FileType html,css colorscheme molokai  " This includes default filetype colorscheme.
-- " autocmd WinEnter,FileType python colorscheme dracula
-- "" Some options: gruvbox, materialbox, cobalt2, codedark, dracula, molokai, wombat256mod
-- ""happy_hacking, jelleybeans, kruby, landscape, lapis256, monokai-phoenix, tir_black, inkpot



-- " Other Options
-- " easier moving of code blocks
-- " Try to go into visual mode (v), thenselect several lines of code here and
-- " then press ``>`` several times.
-- vnoremap < <gv  " better indentation
-- vnoremap > >gv  " better indentation




-- Easier formatting of paragraphs
-- vmap Q gq
-- nmap Q gqap

-- easier moving between tabs
-- map <Leader>n <esc>:tabprevious<CR>
-- map <Leader>m <esc>:tabnext<CR>

-- map sort function to a key
-- vnoremap <Leader>s :sort<CR>

--Quicksave command
-- noremap <C-Z> :update<CR>
-- inoremap <C-Z> <C-O>:update<CR>


--Quick quit command
-- noremap <Leader>e :quit<CR>  " Quit current window
-- noremap <Leader>E :qa!<CR>   " Quit all windows

-- bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
-- Every unnecessary keystroke that can be saved is good for your health :)
-- map <c-j> <c-w>j
-- map <c-k> <c-w>k
-- map <c-l> <c-w>l
-- map <c-h> <c-w>h

--------------------------------
--        Chri@Machine
--------------------------------

M = {}
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap("n", "<C-Space>", "<cmd>WhichKey \\<leader><cr>", opts)
keymap("n", "<C-i>", "<C-i>", opts)

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<m-h>", "<C-w>h", opts)
keymap("n", "<m-j>", "<C-w>j", opts)
keymap("n", "<m-k>", "<C-w>k", opts)
keymap("n", "<m-l>", "<C-w>l", opts)
keymap("n", "<m-tab>", "<c-6>", opts)

-- Tabs --
keymap("n", "<m-t>", ":tabnew %<cr>", opts)
keymap("n", "<m-y>", ":tabclose<cr>", opts)
keymap("n", "<m-\\>", ":tabonly<cr>", opts)



-- I hate typing these
-- keymap("n", "H", "^", opts)
-- keymap("n", "L", "$", opts)
-- keymap("v", "H", "^", opts)
-- keymap("v", "L", "$", opts)
-- keymap("x", "H", "^", opts)
-- keymap("x", "L", "$", opts)
-- keymap("o", "H", "^", opts)
-- keymap("o", "L", "$", opts)

-- keymap("n", "n", "nzzzv", opts)
-- keymap("n", "N", "Nzzzv", opts)

-- Naviagate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- keymap("n", "<RightMouse>", ":Alpha<CR>", opts)

-- Move text up and down
-- keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
-- keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
-- keymap("i", "jk", "<ESC>", opts)



-- Move text up and down
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)
-- keymap("v", "P", '"_dP', opts)

-- Visual Block --
-- Move text up and down
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Custom
-- keymap("n", "<c-h>", "<cmd>nohlsearch<cr>", opts)
-- NOTE: the fact that tab and ctrl-i are the same is stupid
-- keymap("n", "<TAB>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
keymap("n", "Q", "<cmd>Bdelete!<CR>", opts)
keymap("n", "<F1>", ":e ~/Notes/<cr>", opts)
keymap("n", "<F3>", ":e .<cr>", opts)
keymap("n", "<F4>", "<cmd>Telescope resume<cr>", opts)
keymap("n", "<F5>", "<cmd>Telescope commands<CR>", opts)
keymap(
  "n",
  "<F6>",
  [[:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>]],
  opts
)
keymap("n", "<F7>", "<cmd>TSHighlightCapturesUnderCursor<cr>", opts)
keymap("n", "<F8>", "<cmd>TSPlaygroundToggle<cr>", opts)
keymap("n", "<F11>", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "<F12>", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap("v", "//", [[y/\V<C-R>=escape(@",'/\')<CR><CR>]], opts)
keymap("n", "<C-p>", "<cmd>Telescope projects<cr>", opts)
keymap("n", "<C-t>", "<cmd>lua vim.lsp.buf.document_symbol()<cr>", opts)
-- keymap("n", "<C-s>", "<cmd>vsplit<cr>", opts)
keymap("n", "<C-z>", "<cmd>ZenMode<cr>", opts)
keymap("n", "<c-n>", ":e ~/Notes/<cr>", opts)

keymap("n", "-", ":lua require'lir.float'.toggle()<cr>", opts)
-- keymap("n", "<C-\\>", "<cmd>vsplit<cr>", opts)
-- vim.cmd[[nnoremap c* /\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn]]
-- vim.cmd[[nnoremap c# ?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN]]
-- keymap("n", "c*", [[/\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn]], opts)
-- keymap("n", "c#", [[?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN]], opts)
-- keymap("n", "gx", [[:execute '!brave ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)
keymap("n", "gx", [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)
-- Change '<CR>' to whatever shortcut you like :)
-- vim.api.nvim_set_keymap("n", "<CR>", "<cmd>NeoZoomToggle<CR>", { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap("n", "=", "<cmd>JABSOpen<cr>", { noremap = true, silent = true, nowait = true })

-- alt binds
-- keymap("n", "<m-s>", "<cmd>split<cr>", opts)
keymap("n", "<m-v>", "<cmd>lua require('lsp_lines').toggle()<cr>", opts)
-- keymap("n", "<m-q>", "<cmd>:q<cr>", opts)

M.show_documentation = function()
  local filetype = vim.bo.filetype
  if vim.tbl_contains({ "vim", "help" }, filetype) then
    vim.cmd("h " .. vim.fn.expand "<cword>")
  elseif vim.tbl_contains({ "man" }, filetype) then
    vim.cmd("Man " .. vim.fn.expand "<cword>")
  elseif vim.fn.expand "%:t" == "Cargo.toml" then
    require("crates").show_popup()
  else
    vim.lsp.buf.hover()
  end
end
vim.api.nvim_set_keymap("n", "K", ":lua require('user.keymaps').show_documentation()<CR>", opts)

-- vim.api.nvim_set_keymap("n", "<m-b>", "<cmd>lua require('user.bfs').open()<cr>", opts)
-- vim.api.nvim_set_keymap("n", "<m-b>", "<cmd>JABSOpen<cr>", opts)
-- vim.api.nvim_set_keymap("n", "<m-e>", "NvimTreeToggle<cr>", opts)
-- vim.api.nvim_set_keymap(
--   "n",
--   "<m-f>",
--   "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
--   opts
-- )
-- Comment
keymap("n", "<m-/>", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap("x", "<m-/>", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>', opts)

-- vim.api.nvim_set_keymap(
--   "n",
--   "<tab>",
--   "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
--   opts
-- )

-- vim.api.nvim_set_keymap("n", "<tab>", "<cmd>lua require('telescope.builtin').extensions.harpoon.marks(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<cr>", opts)

vim.api.nvim_set_keymap(
  "n",
  "<tab>",
  "<cmd>lua require('telescope').extensions.harpoon.marks(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal', prompt_title='Harpoon'})<cr>",
  opts
)
vim.api.nvim_set_keymap(
  "n",
  "<s-tab>",
  "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<cr>",
  opts
)
-- vim.api.nvim_set_keymap("n", "<tab>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
vim.api.nvim_set_keymap("n", "<m-g>", "<cmd>Telescope git_branches<cr>", opts)
vim.api.nvim_set_keymap("n", "<s-enter>", "<cmd>TodoQuickFix<cr>", opts)
-- l = { "<cmd>lua require('user.bfs').open()<cr>", "Buffers" },

vim.cmd [[
  function! QuickFixToggle()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
      copen
    else
      cclose
    endif
  endfunction
]]

keymap("n", "<m-q>", ":call QuickFixToggle()<cr>", opts)
keymap("n", "<c-l>", "<cmd>lua vim.lsp.codelens.run()<cr>", opts)

return M

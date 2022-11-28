'autoindent'=  indent from current line when starting a new line 
belloff = Specifies for which events the bell will not be rung.
clipboard = unnamedplus    --	
encoding'
expandtab' In Insert mode: Use the appropriate number of spaces to insert a
	<Tab>. 
fileencodings  = "utf-8"
guicursor = 
listchars = eol:c,	space:c,trail:c
mouse'= "a" enables mouse suport	
scroll' = 8 Number of lines to scroll with CTRL-U and CTRL-D commands.  
showmode= false

syntax = true
formatoptions -= "..."

-- Showing line numbers, length and wrap
number = true               -- show line numbers
set showbreak=...           -- add "..." when line wrapping
--set tw=79                 -- width of document (used by gd)
--set nowrap                -- don't automatically wrap on load
set fo-=t                   -- don't automatically wrap text when typing
set linespace=4             -- add some line space for easy reading
set colorcolumn=80
-- highlight colorcolumn ctermbg=243 -- Set 243 color to show column:: 

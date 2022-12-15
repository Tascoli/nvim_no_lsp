-- local my_sys = io.popen('uname -s', 'r')
-- local os = my_sys:read('*l')
-- my_sys:close()
-- print(os:lower())

-- Other Options
-- Maybe the best one
--
local my_OS = vim.loop.os_uname().sysname:lower()
print(my_OS)

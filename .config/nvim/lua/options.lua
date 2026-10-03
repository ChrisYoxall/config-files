-- Assign vim.opt to a local variable to save typing
local opt = vim.opt

-- Line Numbers
opt.number = true         -- Show the absolute line number of the current line
opt.relativenumber = true -- Show relative numbers on other lines (makes jumping with e.

opt.tabstop = 4         -- how many spaces tab inserts
opt.softtabstop = 0     -- with 0, falls back to tabstop
opt.shiftwidth = 4      -- controls number of spaces when using >> or << commands
opt.expandtab = true    -- use appropriate number of spaces with tab
opt.smartindent = true  -- indenting correctly after {
opt.autoindent = true   -- copy indent from current line when starting new line
opt.scrolloff = 8       -- always keep 8 lines above/below cursor unless at start/end of file


local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
-- opt.expandtab = true

opt.hlsearch = false
opt.incsearch = true

opt.cursorline = true

opt.scrolloff = 8 -- Minimal number of screen lines to keep above and below the cursor.

-- Other settings

vim.cmd.colorscheme("rose-pine")

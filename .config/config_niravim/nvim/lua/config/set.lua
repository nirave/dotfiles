-- Set tabs to 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Remove the highlighting for search that stays after
vim.opt.hlsearch = false

-- Highlight as you search
vim.opt.incsearch = true

--Set line numbers true
vim.opt.number = true

--Disable swapfile
vim.opt.swapfile = false

--No error bells
vim.opt.errorbells = false

-- Set the terminal color
-- Note that if using Mac's default terminal app, this will cause it to show weird
-- If so, run: set notermguicolors
vim.opt.termguicolors = true
vim.api.nvim_command [[colorscheme nightfly]]

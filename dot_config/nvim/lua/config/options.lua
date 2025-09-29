-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- configure global tab style
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smarttab = true

-- disable swap file
vim.opt.swapfile = false

-- enable project style
vim.opt.exrc = true
vim.opt.secure = true

-- disable default completion plugins
vim.g.lazyvim_cmp = false

-- change default shell to nushell
-- vim.opt.shell = "powershell"

vim.o.scrolloff = 5

local opt = vim.opt 
vim.o.relativenumber = true
vim.o.number = true
vim.cmd.colorscheme('rose-pine')
vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
opt.clipboard = unnamedplus
opt.scrolloff = 8
opt.tabstop= 4

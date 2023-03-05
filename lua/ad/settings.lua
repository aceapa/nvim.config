local opt = vim.opt
local o = vim.opt
vim.cmd.colorscheme('rose-pine')
vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
opt.clipboard = 'unnamedplus'
opt.scrolloff = 8
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.incsearch = true
opt.signcolumn = "yes"
opt.termguicolors = true
opt.updatetime = 50
opt.colorcolumn = "80"
-- cursor settings: highlight relativenumber set color to pink
vim.cmd('hi CursorLineNr guifg=#af00af')
o.relativenumber = true
o.number = true
o.cursorlineopt = "number"
o.cursorline = true

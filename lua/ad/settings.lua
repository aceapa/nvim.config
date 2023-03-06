local o = vim.opt
-- Highlight the region on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    group = num_au,
    callback = function()
        vim.highlight.on_yank({ higroup = "Visual", timeout = 120 })
    end,
})
-- gui and colorscheme 
--#region
vim.cmd.colorscheme('rose-pine')
vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
o.termguicolors = true
o.colorcolumn = "80"
o.updatetime = 50
--#endregion
o.clipboard = 'unnamedplus'
o.autoindent = true
o.scrolloff = 8
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true
--search
o.hlsearch = false
o.incsearch = true
-- cursor settings: highlight relativenumber set color to pink
vim.cmd('hi CursorLineNr guifg=#af00af')
o.relativenumber = true
o.number = true
o.cursorlineopt = "number"
o.cursorline = true
o.signcolumn = "yes"
o.smartindent = true
-- display special characters
o.list = true
o.listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂,space:·,eol:¬"
-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

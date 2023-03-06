local g = vim.g
g.mapleader = " "
g.maplocalleader = " "
local map = function(m, lhs, rhs)
    local opts = {remap = false, silent = true}
    vim.keymap.set(m, lhs, rhs, opts)
end
-- LSP actions 
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
map('n', 'cd', '<cmd>lua vim.lsp.buf.definition()<cr>')
map('n', 'cD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
map('n', 'ci', '<cmd>lua vim.lsp.buf.implementation()<cr>')
map('n', 'ct', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
map('n', 'cr', '<cmd>lua vim.lsp.buf.references()<cr>')
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
map('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')
map('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
map('x', '<F4>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')
-- Diagnostics 
map('n', 'dl', '<cmd>lua vim.diagnostic.open_float()<cr>')
map('n', 'dp', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
map('n', 'dn', '<cmd>lua vim.diagnostic.goto_next()<cr>')
-- Miscellaneous
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("n", "<leader>pv", vim.cmd.Ex)
map("n", "<C-s>", ':w<CR>')
map("n", "<leader>y", '"+y')
map("v", "<leader>y", '"+y')
map("n", "<C-a>", 'ggVG')
map("n", "<C-g>", ':! git add % <cr><cr>')
map("n", "<leader><left>", '<C-w>h')
map("n", "<leader><right>", '<C-w>l')

require('ad.patch')
local status, val = pcall(require, "ad/install")
if not status or not val then
    print("Instalation has failed!")
    return false
end
require('mason').setup()
vim.lsp.enable('luals')
require('ad.settings')
require('ad.remap')
require('ad.packer')

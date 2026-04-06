local status, whichkey = pcall(require, 'which-key')
if not status then
    return nil
end

config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    whichkey.setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
}
end


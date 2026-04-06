local status, _ = pcall(require, 'undotree')
if not status then
    return nil
end
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)


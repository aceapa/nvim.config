local status, blink = pcall(require, 'blink.cmp')
if not status then
    return nil
end
blink.setup({
    keymap = { preset = 'default' },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },
    completion = { documentation = { 
        auto_show = true, auto_show_delay_ms = 500} 
        },
    sources = {
        default = { 'lsp', 'path', 'snippets' },
    },
    snippets = { preset = 'luasnip' },
    fuzzy = { implementation = 'lua' },
    --signature = { enable = true},
})

local lsp = require('lsp-zero')
lsp.on_attach(function(_, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({})
local lua_opts ={
    settings = {
        Lua = {
            hint = {
                enable = true,
            },
            diagnostics = {
                globals = {'vim'},
            }
    },
    },
}
-- 
-- local python_opts ={ settings = {
--     },
-- }
require('lspconfig').lua_ls.setup(lua_opts)
require('lspconfig').pylsp.setup({})
local cmp = require('cmp')
local cmp_action = lsp.cmp_action()
cmp.setup({
    sources = {
        {name = 'nvim_lsp'},
        {name = 'buffer'},
        {name = 'nvim_lua'},
    },
    mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<leader>k'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})


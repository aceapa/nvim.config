local lsp = require('lsp-zero')

lsp.on_attach(function(_, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)
require('mason').setup({})
require('mason-lspconfig').setup({})
local lua_opts ={ settings = {
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
require('lspconfig').lua_ls.setup(lua_opts)

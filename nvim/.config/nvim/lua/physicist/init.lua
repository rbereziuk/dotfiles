require('physicist/lsp')
require('physicist/tree-sitter')
require('physicist/complition')
require('physicist/diagnostics')
require('physicist/lualine')
require('physicist/lua-snip')
require('physicist.global')
require('physicist.reach')

--require('physicist/zen-mode')
--require('physicist/telekasten')

-- Plugins
require'hop'.setup()
require'nvim-tree'.setup({
  update_cwd = true,
  filters = {
    custom = { '^.git$' },
    exclude = { 'node_modules' },
  }
})
require("bufferline").setup{}
require('Comment').setup()
require'colorizer'.setup()
require('gitsigns').setup()
vim.notify = require("notify")
--require "lsp_signature".setup()
--require("luasnip.loaders.from_vscode").lazy_load()


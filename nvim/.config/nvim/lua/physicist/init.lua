require('physicist/lsp')
require('physicist/tree-sitter')
require('physicist/complition')
require('physicist/diagnostics')
require('physicist/lualine')

-- Plugins
require'hop'.setup()
require'nvim-tree'.setup({
  update_cwd = true
})
require("bufferline").setup{}
require('Comment').setup()


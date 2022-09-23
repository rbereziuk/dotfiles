-- COMPLETION
local cmp = require'cmp'
local lspkind = require('lspkind')
require('nvim-autopairs').setup{}

lspkind.init({

})

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i' }),
    ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i' }),
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = 'nvim_lua' },
    { name = 'nvim_lsp_signature_help' }
  },
  --sources = cmp.config.sources({
  --  { name = 'nvim_lsp' },
  --  { name = 'luasnip' },
  --}, {
  --  { name = 'buffer' },
  --}),
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text',
      --with_text = false,
      --maxwidth = 50
    })
    --[[format = function(entry, vim_item)
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        look = "[Dict]",
        buffer = "[Buffer]",
      })[entry.source.name]
      return vim_item
    end]]
  }
})


return {
  'echasnovski/mini.nvim', version = false,
  config = function()
    require('mini.pairs').setup()
    print('hello')
  end
}

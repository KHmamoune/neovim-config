return {
  'norcalli/nvim-colorizer.lua',
  config = function()
    require 'colorizer'.setup {
      filetypes = {
        '*',
        '!rust',
      }
    }
  end
}

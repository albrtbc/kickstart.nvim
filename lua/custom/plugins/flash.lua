return {
  'folke/flash.nvim',
  opts = {
    modes = {
      char = {
        enabled = false,
      },
    },
  },
  keys = {
    { 'f', mode = { 'n', 'x', 'o' }, function() require('flash').jump() end, desc = 'Flash' },
  },
}

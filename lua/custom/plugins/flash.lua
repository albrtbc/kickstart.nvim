return {
  'folke/flash.nvim',
  opts = {
    labels = 'asdfghjklqwertyuiopzxcvbnm',
    search = {
      mode = 'exact',
      multi_window = true,
    },
    jump = {
      nohlsearch = true,
      autojump = true,
    },
    label = {
      after = false,
      before = true,
    },
    highlight = {
      backdrop = true,
    },
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

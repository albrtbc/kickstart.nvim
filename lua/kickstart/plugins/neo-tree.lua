-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>nf', ':Neotree reveal<CR>', { desc = '[N]eotree [F]ilesystem' } },
  },
  opts = {
    event_handlers = {
      {
        event = 'file_opened',
        handler = function(file_path)
          -- auto close
          require('neo-tree.command').execute { action = 'close' }
        end,
      },
    },
    filesystem = {
      window = {
        mappings = {
          ['<leader>nf'] = 'close_window',
        },
      },
    },
  },
}

vim.g.NERDCreateDefaultMappings = 0

return {
  { -- Add easy code comment
    'preservim/nerdcommenter',
    -- Enable `preservim/nerdcommenter`
    -- See `:help nerdcommenter`

    config = function()
      -- Basic nerdcommenter keymaps
      vim.keymap.set('n', '<leader>cc', '<Plug>NERDCommenterToggle', { noremap = true, desc = '[C]omment [C]ode toggle' })
      vim.keymap.set('n', '<leader>cu', '<Plug>NERDCommenterUncomment', { noremap = true, desc = '[C]omment [U]ncomment' })
      vim.keymap.set('v', '<leader>cc', '<Plug>NERDCommenterToggle', { noremap = true, desc = '[C]omment [C]ode toggle' })
      vim.keymap.set('v', '<leader>cu', '<Plug>NERDCommenterUncomment', { noremap = true, desc = '[C]omment [U]ncomment' })
    end,
  },
}

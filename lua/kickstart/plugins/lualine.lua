return {
  { -- Add fancier status line
    'nvim-lualine/lualine.nvim',
    -- Enable `nvim-lualine/lualine.nvim`
    opts = {
      options = { icons_enabled = true, theme = 'tokyonight' },
      sections = {
        lualine_a = {
          {
            'filename',
            path = 1,
          },
        },
      },
    },
  },
}

return {
  'Hoffs/omnisharp-extended-lsp.nvim',
  ft = { 'cs' },
  config = function()
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('omnisharp-extended-keymaps', { clear = true }),
      callback = function(event)
        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if client and client.name == 'omnisharp' then
          local buf = event.buf
          vim.keymap.set('n', 'grd', function() require('omnisharp_extended').lsp_definition() end, { buffer = buf, desc = '[G]oto [D]efinition (OmniSharp)' })
          vim.keymap.set('n', 'grt', function() require('omnisharp_extended').lsp_type_definition() end, { buffer = buf, desc = '[G]oto [T]ype Definition (OmniSharp)' })
          vim.keymap.set('n', 'grr', function() require('omnisharp_extended').lsp_references() end, { buffer = buf, desc = '[G]oto [R]eferences (OmniSharp)' })
          vim.keymap.set('n', 'gri', function() require('omnisharp_extended').lsp_implementation() end, { buffer = buf, desc = '[G]oto [I]mplementation (OmniSharp)' })
        end
      end,
    })
  end,
}

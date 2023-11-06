return {
  dir = '~/personal/gen_nvim',
  config = function()
    vim.keymap.set('v', '<leader>gn', ':Gen<CR>')
    vim.keymap.set('n', '<leader>gn', ':Gen<CR>')
    require('gen').container = 'ollama'
    require('gen').model = 'codellama'
  end
}

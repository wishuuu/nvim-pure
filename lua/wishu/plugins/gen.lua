return {
  'David-Kunz/gen.nvim',
  config = function()
    vim.keymap.set('v', '<leader>gn', ':Gen<CR>')
    vim.keymap.set('n', '<leader>gn', ':Gen<CR>')
    require('gen').command = 'docker exec -it ollama ollama run $model $prompt'
    require('gen').model = 'codellama'
  end
}

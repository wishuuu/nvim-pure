return {
  'voldikss/vim-floaterm',
  lazy = false,
  config = function()
    vim.keymap.set("n", "<F7>", function() vim.cmd.FloatermToggle() end)
    vim.keymap.set("t", "<F7>", function() vim.cmd.FloatermToggle() end)
    vim.keymap.set("t", "<C-n>", function() vim.cmd.FloatermNew() end)
    vim.keymap.set("t", "<C-[>", function() vim.cmd.FloatermPrev() end)
    vim.keymap.set("t", "<C-]>", function() vim.cmd.FloatermNext() end)

    vim.g.floaterm_width = 0.8
    vim.g.floaterm_height = 0.9
  end
}

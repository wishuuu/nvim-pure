return {
    "mbbill/undotree",
    lazy = false,
    config = function()
        vim.keymap.set('n', '<leader>0', vim.cmd.UndotreeToggle)
        vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
    end
}

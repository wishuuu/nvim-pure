return {
    'tpope/vim-fugitive',
    lazy = false,
    config = function()
        vim.keymap.set("n", "<leader>fs", "<cmd>Git<CR>")
    end
}

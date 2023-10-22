return {
  "machakann/vim-highlightedyank",
  event = 'TextYankPost *',
  config = function ()
    vim.g.highlightedyank_highlight_duration = 300
    vim.cmd [[highlight HighlightedyankRegion ctermbg=237 guibg=#5A90B9]]
  end
}

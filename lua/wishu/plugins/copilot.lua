return {
  'zbirenbaum/copilot.lua',
  config = function()
    require("copilot").setup({
      suggestion = {
        accept = "<A-l>",
      }
    })
  end,
}

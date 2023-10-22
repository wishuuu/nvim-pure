return {
  'zbirenbaum/copilot.lua',
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        accept = "<A-l>",
      }
    })
  end,
}

return{
	"kdheepak/lazygit.nvim",
  action = "LazyGit",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>gg", vim.cmd.LazyGit)
  end
}

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	config = function() 
		vim.cmd.TSUpdate()
		require'nvim-treesitter.configs'.setup {
			ensure_installed = { "lua", "vim", "rust", "typescript", "javascript", "python" },
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		}
	end
}

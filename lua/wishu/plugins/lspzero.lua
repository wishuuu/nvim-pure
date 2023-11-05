return {
	'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
	dependencies = {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/nvim-cmp',
		'L3MON4D3/LuaSnip',
	},
	config = function()
		local lsp = require("lsp-zero")
		local cmp = require('cmp')
		local cmp_action = lsp.cmp_action()

		lsp.preset("recommended")


		cmp.setup({
			mapping = cmp.mapping.preset.insert({
				['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
				['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
				['<C-y>'] = cmp.mapping.confirm({ select = true }),
				["<C-Space>"] = cmp.mapping.complete(),
			})
		})

		lsp.set_preferences({
			suggest_lsp_servers = true,
			sign_icons = {
				error = '',
				warn = '',
				hint = '',
				info = ''
			}
		})

		lsp.on_attach(function(client, bufnr)
			local opts = {buffer = bufnr, remap = false}

			vim.keymap.set("n", "<C-b>", function() vim.lsp.buf.definition() end, opts)
			vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, opts)
			vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
			vim.keymap.set("n", "<leader>lws", function() vim.lsp.buf.workspace_symbol() end, opts)
			vim.keymap.set("n", "<leader>ld", function() vim.diagnostic.open_float() end, opts)
			vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
			vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
			vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
			vim.keymap.set("n", "<leader>rf", function() vim.lsp.buf.references() end, opts)
			vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
			vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
		end)

		local ensure_installed = {'lua_ls', 'rust_analyzer'}

		require('mason').setup({})
		require('mason-lspconfig').setup({
			ensure_installed = ensure_installed
		})

		lsp.setup_servers(require('mason-lspconfig').get_installed_servers())

		lsp.setup()

		vim.diagnostic.config({
			virtual_text = true
		})
	end,
}

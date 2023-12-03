return {
    {
        "jay-babu/mason-nvim-dap.nvim",
        lazy = false,
        dependencies = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap",
        },
        config = function()
            require('mason-nvim-dap').setup()
            local opts = { buffer = bufnr, remap = false }

            vim.keymap.set("n", "<F9>", function() require('dap').continue() end, opts)
            vim.keymap.set("n", "<F7>", function() require('dap').step_over() end, opts)
            vim.keymap.set("n", "<F8>", function() require('dap').step_into() end, opts)
            vim.keymap.set("n", "<C-F7>", function() require('dap').step_out() end, opts)
            vim.keymap.set("n", "<leader>tb", function() require('dap').toggle_breakpoint() end, opts)
            vim.keymap.set("n", "<leader>tB",
                function() require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, opts)

            local dap = require('dap')
        end
    },
    {
        'rcarriga/nvim-dap-ui',
        lazy = false,
        dependencies = { 'mfussenegger/nvim-dap' },
        config = function()
            require('dapui').setup()
            local opts = { buffer = bufnr, remap = false }
            vim.keymap.set("n", "<leader>dui", function() require('dapui').toggle() end, opts)

            local dap, dapui = require("dap"), require("dapui")
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end
    },
    {
        'theHamsta/nvim-dap-virtual-text',
        lazy = false,
        dependencies = { 'mfussenegger/nvim-dap' },
    }
}

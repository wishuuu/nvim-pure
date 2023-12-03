return {
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
}

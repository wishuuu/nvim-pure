return {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = {
        suggestion = {
            enabled = true,
            auto_trigger = true,
            keymap = {
                accept = "<C-p>",
                next = "<C-]>",
                prev = "<C-[",
            }
        },
        panel = {
            enabled = true,
            auto_refresh = true,

        }
    },
}

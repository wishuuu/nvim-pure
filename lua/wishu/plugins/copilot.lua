return {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = {
        suggestion = {
            enabled = true,
            auto_trigger = true,
            keymap = {
                accept = "<A-l>",
                next = "<A-]>",
                prev = "<A-[",
            }
        },
        panel = {
            enabled = true,
            auto_refresh = true,

        }
    },
}

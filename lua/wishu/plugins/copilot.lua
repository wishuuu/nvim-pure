return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    opts = {
        suggestion = {
            enabled = true,
            auto_trigger = true,
            keymap = {
                accept = "<C-g>",
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

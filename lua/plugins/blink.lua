return {
    -- https://www.lazyvim.org/extras/coding/blink#blinkcmp
    "saghen/blink.cmp",
    opts = {
        keymap = {
            preset = "super-tab",
            ["<Up>"] = { "fallback" },
            ["<Down>"] = { "fallback" },
            -- ["<C-t>"] = { "show" },
        },
        completion = {
            list = { selection = {
                preselect = true,
            } },
            trigger = {
                show_on_keyword = false,
                show_on_trigger_character = false,
            },
            menu = {
                auto_show = false,
            },
            ghost_text = { -- TODO: How to show ghost_text and hide menu? NOT WORKING
                enabled = true,
            },
        },
    },
}

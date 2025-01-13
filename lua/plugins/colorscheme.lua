return {
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {
            style = "day",
            dim_inactive = true,
            -- transparent = true,
        },
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = true,
        opts = {
            flavour = "latte",
            -- transparent_background = true,
            dim_inactive = {
                enabled = true,
                shade = "dark",
                percentage = 0.15,
            },
        },
    },
    { "sainnhe/everforest", lazy = "true" },
    { "nuvic/flexoki-nvim", lazy = "true", variant = "dawn"},
    {
        "navarasu/onedark.nvim",
        opts = { style = "light",
            -- transparent = true
        },
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "everforest",
        }
    },
}

return {
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {
            -- style = "day",
            dim_inactive = true,
            -- transparent = true,
        },
    },
    { "sainnhe/everforest", lazy = "true" },
    { "nuvic/flexoki-nvim", lazy = "true", variant = "dawn" },
    {
        "navarasu/onedark.nvim",
        opts = {
            style = "light",
            transparent = false,
            colors = {},
        },
    },
    {
        "EtiamNullam/white-chocolate.nvim",
        -- config = function()
        --     require("white-chocolate").setup({ fix_terminal_background = false })
        -- end,
        lazy = "false",
        opts = {
            fix_terminal_background = false,
        },
    },
    { "EdenEast/nightfox.nvim" },
    { "sainnhe/edge" },
    {
        "zenbones-theme/zenbones.nvim",
        -- Optionally install Lush. Allows for more configuration or extending the colorscheme
        -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
        -- In Vim, compat mode is turned on as Lush only works in Neovim.
        dependencies = "rktjmp/lush.nvim",
    },
    { "ellisonleao/gruvbox.nvim" },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "dayfox",
        },
    },
}

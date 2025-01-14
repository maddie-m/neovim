return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                filetypes = { "lua" },
            })
            lspconfig.sourcekit.setup({
                root_dir = lspconfig.util.root_pattern("Package.swift"),
                capabilities = {
                    workspace = {
                        didChangeWatchedFiles = {
                            dynamicRegistration = true,
                        },
                    },
                },
            })
            lspconfig.hyprls.setup({
                filetypes = { "conf" },
            })
            lspconfig.nixd.setup({
                filetypes = { "nix" },
            })
            lspconfig.superhtml.setup({
                filetypes = { "html" },
            })
            vim.diagnostic.config({ virtual_text = false }) -- use tiny-inline below instead of default
        end,
    },
    {
        "rachartier/tiny-inline-diagnostic.nvim",
        event = "VeryLazy", -- Or `LspAttach`
        priority = 1000, -- needs to be loaded in first
        opts = {
            preset = "modern",
            options = {
                show_source = true,
                use_icons_from_diagnostics = true,
                multilines = {
                    enabled = true,
                },
            },
            show_all_diags_on_cursorline = true,
            break_line = {
                -- Enable the feature to break messages after a specific length
                enabled = true,

                -- Number of characters after which to break the line
                after = 30,
            },
        },
    },
}

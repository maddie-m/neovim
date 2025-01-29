return {

    {
        "stevearc/conform.nvim",
        opts = {
            log_level = vim.log.levels.DEBUG,
            formatters = {
                -- xmlformat = {
                -- prepend_args = { "--preserve 'literal'", "--eof-newline", "--selfclose", "--blanks" },
                -- command = "xmlformat",
                -- },
            },
            formatters_by_ft = {
                c = { "clang_format" },
                h = { "clang_format" },
                cpp = { "clang_format" },
                hpp = { "clang_format" },
                cuda = { "clang_format" },
                -- xslt = { "mytidy" },
                -- xml = { "mytidy" },
                -- xsl = { "mytidy" },
                -- ant = { "mytidy" },
                -- typst = { "typstfmt" },
                -- xslt = { "xmlformat" },
                -- xml = { "xmlformat" },
                -- xsl = { "xmlformat" },
                -- ant = { "xmlformat" },
            },
            lsp_fallback = true,
        },
    },
    {
        "lervag/vimtex",
        config = function()
            vim.g.vimtex_quickfix_open_on_warning = 0
            -- vim.g.vimtex_view_method = "okular &"
        end,
    },

    {
        "neovim/nvim-lspconfig",
        keys = {
            { "<leader>cl", "<cmd>LspInfo<cr>" },
        },
        opts = {
            diagnostics = {
                virtual_text = false,
            },
            servers = {
                tinymist = {
                    settings = {
                        formatterMode = "typstyle",
                    },
                },
                matlab_ls = {
                    single_file_support = true,
                    settings = {},
                },
                -- lemminx = {
                --     settings = {
                --         xml = {
                --             format = {
                --                 joinContentLines = false,
                --             },
                --             capabilities = { formatting = false },
                --             validation = { noGrammar = "ignore" },
                --         },
                --     },
                -- },
            },
        },
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

return {
    -- https://www.lazyvim.org/extras/coding/blink#blinkcmp
    {
        "saghen/blink.cmp",
        -- key = { { "<C-k>", require("blink.cmp")["show_documentation"], mode = { "n", "x" } } },
        opts = {

            keymap = {
                preset = "super-tab",
                ["<Up>"] = { "fallback" },
                ["<Down>"] = { "fallback" },
                -- ["<C-k>"] = { "show", "show_documentation", "hide_documentation" },
                ["<CR>"] = { "fallback" },
                ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },

                -- ["<C-Space>"] = { "show", "hide" },
                -- C-k will show docs
                -- C-n scroll down
                -- C-p scroll up
                -- tab for accept
            },
            completion = {
                list = { selection = {
                    preselect = true,
                } },
                trigger = {
                    show_on_keyword = true,
                    show_on_trigger_character = true,
                },
                menu = {
                    border = { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" },
                    auto_show = true,
                },
                documentation = {
                    window = { winblend = 15, border = { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" } },
                },
                -- ghost_text = {
                -- enabled = true,
                -- },
            },

            signature = {
                window = {
                    winblend = 25,
                    border = "none",
                    -- border = { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" },
                },
                enabled = true,
            },
            sources = {
                providers = {
                    lsp = {
                        score_offset = 3,
                    },
                    buffer = {
                        score_offset = -3,
                    },
                    snippets = {
                        name = "Snippets",
                        module = "blink.cmp.sources.snippets",
                        score_offset = -3,
                        opts = {
                            friendly_snippets = true,
                            search_paths = { vim.fn.stdpath("config") .. "/snippets" },
                            global_snippets = { "" },
                            extended_filetypes = {},
                            ignored_filetypes = {},
                        },
                    },
                },
            },
        },
    },
    {
        "rafamadriz/friendly-snippets",
        config = function() end,
    },
    {
        "windwp/nvim-ts-autotag",

        opts = {

            -- enable_close = true, -- Auto close tags
            -- enable_rename = true, -- Auto rename pairs of tags
            -- enable_close_on_slash = true, -- Auto close on trailing
        },
        -- enabled = false,
    },
    -- { "tronikelis/ts-autotag.nvim", opts = {} },
    { "echasnovski/mini.pairs", enabled = false },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            local Rule = require("nvim-autopairs.rule")
            local npairs = require("nvim-autopairs")
            npairs.setup({ check_ts = true })
            npairs.add_rule(Rule("$$", "$$", "tex"))
            npairs.add_rule(Rule("```", "```", "typst"))
            npairs.add_rule(Rule("```", "```", "markdown"))
            npairs.add_rule(Rule("{", "},", "lua"))
        end,
    },

    {
        "mikavilpas/yazi.nvim",
        event = "VeryLazy",
        keys = {
            -- 👇 in this section, choose your own keymappings!
            {
                "<leader>e",
                mode = { "n", "v" },
                "<cmd>Yazi<cr>",
                desc = "Open yazi at the current file",
            },
            {
                -- Open in the current working directory
                "<leader>E",
                "<cmd>Yazi cwd<cr>",
                desc = "Open yazi in cwd",
            },
            {
                -- NOTE: this requires a version of yazi that includes
                -- https://github.com/sxyazi/yazi/pull/1305 from 2024-07-18
                "<c-up>",
                "<cmd>Yazi toggle<cr>",
                desc = "Resume the last yazi session",
            },
        },
        ---@type YaziConfig
        opts = {
            -- if you want to open yazi instead of netrw, see below for more info
            open_for_directories = true,
            keymaps = {
                show_help = "<f1>",
            },
        },
    },

    {
        "folke/snacks.nvim",
        keys = {},
        opts = {

            styles = {

                notification_history = {
                    border = { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" },
                },
                notification = {
                    border = { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" },
                },
                input = {
                    border = { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" },
                },
                scratch = {
                    border = { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" },
                },
            },
            terminal = {
                keys = { "<C-/>", "hide" },
            },
        },
    },

    {
        "chrisgrieser/nvim-rip-substitute",
        cmd = "RipSubstitute",
        opts = {},
        keys = {
            {
                "<leader>sx",
                function()
                    require("rip-substitute").sub()
                end,
                mode = { "n", "x" },
                desc = " Rip substitute",
            },
        },
    },

    {
        "SylvanFranklin/omni-preview.nvim",
        opts = {},
        lazy = true,
        keys = {
            {
                "<leader>cp",
                "<cmd>OmniPreview toggle<cr>",
                mode = { "n", "x" },
                desc = "OmniPreview",
            },
        },
        ft = { "md", "typst", "csv", "latex", "tex" },
        dependencies = {
            -- Typst
            { "toppair/peek.nvim", lazy = true },
            { "chomosuke/typst-preview.nvim", lazy = true },
            -- CSV
            { "hat0uma/csvview.nvim", lazy = true },
        },
    },

    {
        "folke/persistence.nvim",
        opts = {
            "curdir",
            "folds",
            "tabpages",
            "terminal",
        },
    },
}

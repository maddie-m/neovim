return {
    {
        "folke/which-key.nvim",
        opts = {
            preset = "helix",
            keys = {
                scroll_down = "<c-n>",
                scroll_up = "<c-p>",
            },

            plugins = { registers = false },
            win = {

                -- padding = { 2, 1, 1, 1 },
                height = { max = 55 },
                border = { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" },
            },
            spec = {
                { "<leader>fl", group = "LazyVim files" },
                { "g", icon = "󰹹 " },
                { "gc", icon = " " },
                { "gs", icon = LazyVim.config.icons.kinds["Array"], desc = "Surroundings" },
                { "<leader>e", icon = "󱧶 " },
                { "<leader>E", icon = " " },
            },
        },
    },
    {
        "folke/which-key.nvim",
        opts = function()
            require("functions").Colorscheme_update()
        end,
    },
    {
        "ibhagwan/fzf-lua",
        keys = {
            { '<leader>"', "<cmd> FzfLua registers<CR>", mode = { "n", "x" }, desc = "Registers (fzf)", remap = true },
            {
                "<leader>fll",
                "<cmd>FzfLua files cwd=~/.local/share/nvim/lazy/LazyVim<CR>",
                mode = { "n", "x" },
                desc = "Find LazyVim files",
            },
            {
                "<leader>flg",
                "<cmd>FzfLua live_grep cwd=~/.local/share/nvim/lazy/LazyVim<CR>",
                mode = { "n", "x" },
                desc = "Grep LazyVim files",
            },
        },
        opts = function(_, opts)
            opts.winopts = {

                -- border = { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" },
                border = { "▏", " ", "▕", "▕", "▕", " ", "▏", "▏" },
                scrollbar = "float",
                preview = {
                    border = "solid",
                    scrollbar = "float",
                    scrollchars = { "|", "" },
                },
            }
            opts.fzf_colors = {
                true,
                ["fg"] = { "fg", "CursorLine" },
                ["bg"] = { "bg", "Normal" },
                ["hl"] = { "fg", "Comment" },
                ["fg+"] = { "fg", "Normal", "underline" },
                ["bg+"] = { "bg", { "CursorLine", "Normal" } },
                ["hl+"] = { "fg", "Statement" },
                ["info"] = { "fg", "PreProc" },
                ["prompt"] = { "fg", "Conditional" },
                ["pointer"] = { "fg", "Exception" },
                ["marker"] = { "fg", "Keyword" },
                ["spinner"] = { "fg", "Label" },
                ["header"] = { "fg", "Comment" },
                ["gutter"] = "-1",
            }
            return opts
        end,
    },
    {
        "ahmedkhalf/project.nvim",
        keys = {
            { "<leader>qp", "<cmd>AddProject<CR>", desc = "Add Project" },
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = function(_, opts)
            table.remove(opts.sections.lualine_b, 1)
            table.remove(opts.sections.lualine_c, 3)
            table.insert(opts.sections.lualine_c, {
                "filetype",
                icon_only = false,
                separators = "",
                padding = { left = 1, right = 0 },
            })
            table.insert(opts.sections.lualine_b, {
                "windows",
                icons_enabled = false,
                icon = " ",
                show_modified_status = true,
            })
            table.remove(opts.sections.lualine_z, 1)
            table.insert(opts.sections.lualine_z, { "branch" })
        end,
    },
    {
        "folke/noice.nvim",
        -- keys = {
        --     {
        --         "<leader>K",
        --         function()
        --             require("noice.lsp.signature")
        --         end,
        --         mode = { "n", "x" },
        --         desc = "Show signature (Noice)",
        -- },
        -- },
        opts = {
            views = {
                hover = {
                    border = {
                        style = { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" },
                    },
                },
            },
            cmdline = {
                enabled = true,
                view = "cmdline_popup",
                format = {
                    conceal = false,
                },
            },
            presets = {
                command_palette = true,
                lsp_doc_border = true,
            },
            signature = { enabled = true, auto_open = {
                enabled = false,
            } },
            lsp = {
                override = {},
                signature = {
                    enabled = true,
                    auto_open = { enabled = false },
                },
            },
        },
    },
    {
        "tris203/precognition.nvim",
        event = "VeryLazy",
        opts = {
            startVisible = true,
            showBlankVirtLine = true,
            -- highlightColor = { link = "EdgyIcon" },
            hints = {
                Caret = { text = "^", prio = 2 },
                Dollar = { text = "$", prio = 1 },
                MatchingPair = { text = "%", prio = 5 },
                Zero = { text = "0", prio = 1 },
                w = { text = "w", prio = 10 },
                b = { text = "b", prio = 9 },
                e = { text = "e", prio = 8 },
                W = { text = "W", prio = 7 },
                B = { text = "B", prio = 6 },
                E = { text = "E", prio = 5 },
            },
            gutterHints = {
                G = { text = "G", prio = 10 },
                gg = { text = "gg", prio = 9 },
                PrevParagraph = { text = "{", prio = 8 },
                NextParagraph = { text = "}", prio = 8 },
            },
            disabled_fts = {
                "startify",
                "dashboard",
            },
        },
    },
}

-- don't forget install clang-format
-- :ConformInfo to check
return {
    {
        "stevearc/conform.nvim",
        opts = {
            log_level = vim.log.levels.DEBUG,
            formatters = {
                mytidy = {
                    prepend_args = { "-xml" },
                    command = "tidy",
                },
            },
            formatters_by_ft = {
                c = { "clang_format" },
                h = { "clang_format" },
                cpp = { "clang_format" },
                hpp = { "clang_format" },
                cuda = { "clang_format" },
                xslt = { "mytidy" },
                xml = { "mytidy" },
                xsl = { "mytidy" },
                ant = { "mytidy" },
                nix = { "nixfmt" },
                swift = { "swiftformat" },
            },
            lsp_fallback = true,
        },
    },
}

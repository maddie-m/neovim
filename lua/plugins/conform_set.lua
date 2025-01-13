-- don't forget install clang-format
-- :ConformInfo to check
return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                c = { "clang_format" },
                h = { "clang_format" },
                cpp = { "clang_format" },
                hpp = { "clang_format" },
                cuda = { "clang_format" },
                -- xslt = { "xmlformatter" },
                -- xml = { "xmlformatter" },
                -- xsl = { "xmlformatter" },
                -- ant = { "xmlformatter" },
                nix = { "nixfmt" },
                swift = { "swiftformat" },
            },
            lsp_fallback = true,
        },
    },
}

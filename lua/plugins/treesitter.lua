return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {
            "hyprlang",
            "typescript",
        },
    },
    vim.filetype.add({
        pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
    }),
    vim.filetype.add({
        pattern = { ["*.rasi"] = "css" },
    }),
    vim.filetype.add({
        pattern = { ["*.swift"] = "swift" },
    }),
}

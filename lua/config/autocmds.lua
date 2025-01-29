-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- function Colorscheme_update()
--     vim.api.nvim_set_hl(0, "WhichKeyFloat", { link = "FloatBorder" })
--     vim.api.nvim_set_hl(0, "WhichKeyTitle", { link = "FloatBorder" })
--     vim.api.nvim_set_hl(0, "WhichKey", { bg = "NONE" })
--     vim.api.nvim_set_hl(0, "FzfLuaHeaderBind", { link = "CadetBlue4" })
--     vim.api.nvim_set_hl(0, "FzfLuaPathLineNr", { link = "NvimLightGreen" })
--     vim.api.nvim_set_hl(0, "FzfLuaTabMarker", { link = "NvimLightGreen" })
--     vim.api.nvim_set_hl(0, "FzfLuaBufNr", { link = "NvimLightGreen" })
--     vim.notify("Done")
-- end
local autocmd = vim.api.nvim_create_autocmd
autocmd("ColorScheme", {
    callback = function()
        require("functions").Colorscheme_update()
    end,
})

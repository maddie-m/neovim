local functions = {}

function functions.Colorscheme_update()
    -- change 'FloatBorder' highlight every
    -- time the colorscheme change
    -- local float_border = vim.api.nvim_get_hl_defs(0, { name = "FloatBorder" })
    -- remove background, you can also set this
    -- to the background of 'Nomal' highlight
    -- float_border.bg = "none"
    -- vim.api.nvim_set_hl(0, "FloatBorder", float_border)
    -- vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "WhichKey", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "WhichKeyBorder", { bg = "" })
    -- local float_normal = vim.api.nvim_get_hl_defs(0, { name = "NormalFloat" })
    -- float_normal.bg = "none"
    -- vim.api.nvim_set_hl(0, "NormalFloat", float_normal)
    -- vim.api.nvim_set_hl(0, "NormalFloat", { fg = "none" })
    vim.api.nvim_set_hl(0, "WhichKeyTitle", { link = "NormalFloat" })
    vim.api.nvim_set_hl(0, "FloatBorder", { link = "NormalFloat" })
    vim.api.nvim_set_hl(0, "FzfLuaTitle", { bg = "none" })
    vim.api.nvim_set_hl(0, "FzfLuaBorder", { link = "FloatBorder" })
    vim.api.nvim_set_hl(0, "SnacksWinBar", { link = "WhichKeyTitle" })
    vim.api.nvim_set_hl(0, "SnacksInputTitle", { link = "WhichKeyTitle" })
    vim.api.nvim_set_hl(0, "FzfLuaHeaderBind", { link = "SnacksInputTitle" })
    vim.api.nvim_set_hl(0, "FzfLuaPathLineNr", { link = "SnacksInputTitle" })
    vim.api.nvim_set_hl(0, "FzfLuaTabMarker", { link = "SnacksInputPrompt" })
    vim.api.nvim_set_hl(0, "FzfLuaBufNr", { link = "SnacksInputBorder" })
    -- vim.notify("Done")
end

return functions

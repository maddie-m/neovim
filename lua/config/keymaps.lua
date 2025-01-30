-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("n", "<leader><tab>c", "<cmd>tab split<cr>", { desc = "Open buffer in new tab" })
-- map({ "n", "v", "s" }, "p", '"0p', { desc = "Paste from 0 register" })
-- map({ "n", "v", "s" }, "P", '"0P', { desc = "Paste above from 0 register" })

-- map({ "i", "<C-n>", "<Up>" })
map("i", "<c-n>", "<Down>", { noremap = true })
map("i", "<c-p>", "<Up>", { noremap = true })
map("i", "<c-h>", "<Left>", { noremap = true })
map("i", "<c-l>", "<Right>", { noremap = true })

-- Close noice hover without entering the float
local function close_floating()
    local Docs = require("noice.lsp.docs")

    for i, x in pairs(Docs._messages) do
        if x.event == "lsp" then
            Docs.hide(x)
        end
    end
end
map("i", "<c-e>", function()
    close_floating()
end)
map("n", "<Esc>", function()
    close_floating()
end)
map("n", "q", function()
    close_floating()
end)
vim.keymap.del("n", "<leader>`")

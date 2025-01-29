-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("n", "<leader><tab>c", "<cmd>tab split<cr>", { desc = "Open buffer in new tab" })
-- map("i", "<M-c>", function()
--     vim.lsp.buf.signature_help()
--     -- local nldocs = require("noice.lsp.docs")
--     -- local message = nldocs.get("signature")
--     -- nldocs.show(message)
-- end, { desc = "Show signature help" })
-- map({ "n", "v", "s" }, "p", '"0p', { desc = "Paste from 0 register" })
-- map({ "n", "v", "s" }, "P", '"0P', { desc = "Paste above from 0 register" })

-- map({ "i", "<C-n>", "<Up>" })
map("i", "<c-n>", "<Down>", { noremap = true })
map("i", "<c-p>", "<Up>", { noremap = true })

-- map("n", "<leader>K", function()
--     vim.lsp.buf.hover({ { focus = false } })
-- end)
--
vim.keymap.del("n", "<leader>K")
local function close_floating()
    local inactive_floating_wins = vim.fn.filter(vim.api.nvim_list_wins(), function(k, v)
        local file_type = vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(v), "filetype")

        return vim.api.nvim_win_get_config(v).relative ~= ""
            -- and v ~= vim.api.nvim_get_current_win()
            and file_type ~= "hydra_hint"
    end)
    for _, w in ipairs(inactive_floating_wins) do
        pcall(vim.api.nvim_win_close, w, false)
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

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
-- map({ "i", "<C-n>", "<Nop>", { noremap = true } })

-- map({ "i", "<C-n>", "<Up>" })

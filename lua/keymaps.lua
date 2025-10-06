-- space bar leader key
vim.g.mapleader = " "

-- buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

vim.keymap.set("n", "gD", ":lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<CR>")

-- telescope
vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")

-- tree
vim.keymap.set("n", "<leader>d", ":NvimTreeFindFileToggle<cr>")

-- nvim-comment
vim.keymap.set({"n", "v"}, "<leader>/", ":CommentToggle<cr>")

-- ToggleTerm
vim.keymap.set("n", "<leader>tt", ":ToggleTerm<cr>")
vim.keymap.set("t", "<esc>", "<C-\\><C-n> :ToggleTerm<cr>")

-- conform.nvim
vim.keymap.set("n", "<leader>cf", function()
    require("conform").format({
        lsp_format = "fallback",
    })
end, { desc = "Format current file" })

-- Show warnings and errors for line
vim.keymap.set({"n", "i", "v"}, "<leader>e", ":lua vim.diagnostic.open_float(0, {scope=\"line\"})<cr>")

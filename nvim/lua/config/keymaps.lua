-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {
    desc = "Find files",
})

vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {
    desc = "Live grep",
})

vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", {
    desc = "Find buffers",
})

vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {
    desc = "Help tags",
})

-- Oil
vim.keymap.set("n", "-", "<cmd>Oil<CR>", {
    desc = "Open parent directory",
})

-- Save / quit
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

-- Clear search highlight
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Better movement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Clipboard
vim.keymap.set({"n", "v"}, "<leader>y", '"+y', { desc = "Yank to clipboard" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste from clipboard" })

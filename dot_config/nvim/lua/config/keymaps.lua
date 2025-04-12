local map = vim.keymap.set

map("n", "<C-d>", "<C-d>zz", { desc = "Half-page down and center", silent = true })
map("n", "<C-u>", "<C-u>zz", { desc = "Half-page up and center", silent = true })
map("n", "n", "nzzzv", { desc = "Next search result and center", silent = true })
map("n", "N", "Nzzzv", { desc = "Previous search result and center", silent = true })

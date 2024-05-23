local keymap = vim.keymap.set

-- Modes
keymap("i", "jj", "<Esc>", { desc = "Escape to normal mode (from insert mode)", silent = true })
keymap("v", "nn", "<Esc>", { desc = "Escape to normal mode (from visual mode)", silent = true })
keymap("n", "*", "i", { desc = "Enter insert mode", silent = true })

-- Movement
keymap({ "n", "v" }, "0", "^", { desc = "Jump to the first non-blank character of the line" })
keymap({ "n", "v" }, "-", "g_", { desc = "Jump to the last non-blank character of the line" })

keymap({ "n", "v" }, "i", "gk", { desc = "Move up", silent = true })
keymap({ "n", "v" }, "j", "h", { desc = "Move down", silent = true })
keymap({ "n", "v" }, "k", "gj", { desc = "Move left", silent = true })
keymap({ "n", "v" }, "l", "l", { desc = "Move right", silent = true })

-- Panes
keymap("n", "<C-i>", "<C-w>k", { desc = "Switch to upper pane", silent = true })
keymap("n", "<C-j>", "<C-w>h", { desc = "Switch to left pane", silent = true })
keymap("n", "<C-k>", "<C-w>j", { desc = "Switch to lower pane", silent = true })
keymap("n", "<C-l>", "<C-w>l", { desc = "Switch to right pane", silent = true })

-- Editing
keymap("n", "U", "<C-r>", { desc = "Redo", silent = true })

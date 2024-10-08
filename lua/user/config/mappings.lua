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
keymap("n", "<leader>s", vim.lsp.buf.rename, { desc = "Rename Symbol", silent = true })

-- Code
keymap("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions", silent = true })
keymap("n", "<leader>k", vim.lsp.buf.hover, { desc = "Hover", silent = true })
keymap("n", "<leader>o", "<cmd>Outline<cr>", { desc = "View Outline", silent = true })
keymap("n", "<leader>\\", "<cmd>noh<cr>", { desc = "Clear Highlighting", silent = true })

-- Buffers and Files
keymap("n", "<leader>w", "<cmd>w<cr>", { desc = "Write Buffer", silent = true })
keymap("n", "<leader>bd", "<cmd>bd<cr>", { desc = "Close Buffer", silent = true })

keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "File Explorer", silent = true })
keymap("n", "<C-n>", "<cmd>NvimTreeFocus<cr>", { desc = "File Explorer", silent = true })

keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files", silent = true })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep", silent = true })
keymap("n", "<leader>fb", "<cmd>BufferLinePick<cr>", { desc = "Pick Buffer", silent = true })

-- Goto
keymap("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Goto Definition", silent = true })
keymap("n", "<leader>gr", vim.lsp.buf.references, { desc = "See references", silent = true })

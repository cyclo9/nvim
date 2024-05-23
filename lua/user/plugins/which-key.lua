return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        local wk = require("which-key")
        wk.register({
            c = {
                a = { vim.lsp.buf.code_action, "Code Actions" },
            },
            b = {
                name = "Buffer",
                d = { "<cmd>bd<cr>", "Close Buffer" },
            },
            e = { "<cmd>NvimTreeOpen<cr>", "File Explorer" },
            f = {
                name = "Telescope",
                f = { "<cmd>Telescope find_files<cr>", "Find files" },
                g = { "<cmd>Telescope live_grep<cr>", "Live Grep" }
            },
            g = {
                name = "Goto",
                d = { vim.lsp.buf.definition, "Go to Definition" },
            },
            k = { vim.lsp.buf.hover, "Hover" },
            s = { vim.lsp.buf.rename, "Rename Symbol" },
        }, { prefix = "<leader>" })
    end,
}

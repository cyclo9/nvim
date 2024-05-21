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
            f = { 
                name = "Telescope",
                f = { "<cmd>Telescope find_files<cr>", "Find files" }
            },
            k = { vim.lsp.buf.hover, "Hover" },
            g = {
                name = "Goto",
                d = { vim.lsp.buf.definition, "Go to Definition" }
            },
            c = {
                a = { vim.lsp.buf.code_action, "Code Actions" }
            },
            b = {
                name = "Buffer",
                d = { "<cmd>bd<cr>", "Close Buffer" }
            }
        }, { prefix = "<leader>" })
    end
}

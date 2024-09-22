local servers = {
    lua_ls = {},
    pyright = {
        settings = {
            python = {
                pythonPath = "~/miniconda3/bin/python"
            },
        },
    },
    kotlin_language_server = { cmd = { "kotlin-language-server" } },
    gopls = {},
}

return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = vim.tbl_keys(servers),
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            for lsp, config in pairs(servers) do
                config.capabilities = capabilities
                lspconfig[lsp].setup(config)
            end
        end,
    },
}

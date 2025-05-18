local servers = {
	lua_ls = {},
	pyright = {
		settings = {
			python = {
				pythonPath = "~/miniconda3/bin/python",
			},
		},
	},
	kotlin_language_server = { cmd = { "kotlin-language-server" } },
	gopls = {},
}

return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = vim.tbl_keys(servers),
				automatic_enable = false,
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

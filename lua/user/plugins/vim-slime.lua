return {
	"jpalardy/vim-slime",
	config = function()
		vim.g.slime_target = "kitty"
		vim.g.slime_default_config = {
			socket_name = "default",
			target_pane = "{right}",
		}
		vim.g.slime_config_preset = "default"
		vim.g.slime_bracketed_paste = 1

		vim.api.nvim_set_keymap(
			"n",
			"<leader>cc",
			"<Plug>SlimeParagraphSend",
			{ desc = "Run Paragraph", silent = true }
		)
		vim.api.nvim_set_keymap("v", "<leader>cc", "<Plug>SlimeRegionSend", { desc = "Run Region", silent = true })
	end,
	lazy = false,
	enabled = false,
}

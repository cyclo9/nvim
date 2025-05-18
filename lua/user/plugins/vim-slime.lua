return {
	"jpalardy/vim-slime",
	config = function()
		vim.g.slime_target = "tmux"
		vim.g.slime_default_config = {
			socket_name = "default",
			target_pane = "{right}",
		}
		vim.g.slime_config_preset = "default"
		vim.g.slime_bracketed_paste = 1

		-- vim.api.nvim_set_keymap(
		-- 	"n",
		-- 	"<leader>rr",
		-- 	"<Plug>SlimeParagraphSend",
		-- 	{ desc = "Run Paragraph", silent = true }
		-- )
		-- vim.api.nvim_set_keymap("v", "<leader>rr", "<Plug>SlimeRegionSend", { desc = "Run Region", silent = true })
		--
		-- vim.keymap.set("n", "<leader>rf", function()
		-- 	vim.api.nvim_command("call slime#send('%reset -f\n')")
		-- end, { desc = "Clear Output", silent = true })
		-- vim.keymap.set("n", "<leader>cc", function()
		-- 	vim.api.nvim_command("call slime#send('clear\n')")
		-- end, { desc = "Clear Output", silent = true })
	end,
	lazy = false,
	enabled = false,
}

return {
	"hedyhli/outline.nvim",
	config = function()
		require("outline").setup({
			outline_window = {
				position = "left",
				show_numbers = true,
				show_relative_numbers = true,
			},
		})
	end,
}

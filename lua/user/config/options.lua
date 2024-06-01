vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.foldlevel = 99
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

vim.opt.termguicolors = true
vim.cmd("highlight LineNr guifg=#ffffff")

-- vim.api.nvim_create_autocmd({ "BufReadPost", "FileReadPost" }, {
-- 	pattern = "*",
-- 	callback = function()
-- 		vim.defer_fn(function()
-- 			vim.cmd("normal zR")
-- 		end, 50)
-- 	end,
-- })

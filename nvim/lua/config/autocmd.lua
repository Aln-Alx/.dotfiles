-- NVIM AUTOCOMMANDS BY allen-alex
-- autocmd.lua


-- [Auto-Commands] --


-- close nvim-tree if it's last buffer open
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*",
	callback = function()
		if #vim.api.nvim_list_bufs() == 1 and vim.bo.filetype == "NvimTree" then
	vim.cmd("quit")
	end
	end,
})



-- reload files on external change
vim.api.nvim_create_autocmd("FocusGained", {
	pattern = "*",
	command = "checktime",
})


-- ############### --

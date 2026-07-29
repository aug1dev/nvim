return {
	'akinsho/bufferline.nvim',
	version = "*", 
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function ()
		require("bufferline").setup{}

		vim.keymap.set("n", "<tab>", ":BufferLineCycleNext<cr>")
		vim.keymap.set("n", "<s-tab>", ":BufferLineCyclePrev<cr>")
	end
}
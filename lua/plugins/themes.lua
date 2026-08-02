return {
	{
		"vim-scripts/Relaxed-Green",
	},
	{
		"yantze/pt_black",
	},
	{
	  "piyush-ppradhan/naysayer.vim",
	  lazy = false,
	  priority = 1000,
	  config = function()
		vim.cmd.colorscheme("naysayer")
	  end,
	}
}

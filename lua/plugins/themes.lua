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
	},
	{
	  "zaki/zazen",
	},
	{
	  "andreasvc/vim-256noir",
	},
	{
	  "ryanpcmcquen/true-monochrome_vim",
	},
    {
      "tpope/vim-vividchalk",
	  config = function()
		vim.cmd.colorscheme("vividchalk")
	  end,
    }
}

return {
	"goolord/alpha-nvim",
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		local alpha = require("alpha")
		local startify = require("alpha.themes.startify")

		startify.file_icons.provider = "devicons"


		startify.section.val = {
			[[ AUGUST ]]
		}

		startify.section.top_buttons.val = {
			startify.button("f", "󰈞  Find file" , "<leader>ff"),
			startify.button("r", "󰦛  Restore" , "AutoSession restore<cr>"),
		}

		startify.section.mru.val = { { type = "padding", val = 0 } }
		startify.section.mru_cwd.val = { { type = "padding", val = 0 } }


		alpha.setup(startify.config)
	end,
}

return {
	"goolord/alpha-nvim",
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[  ___  _   _ _____ _   _ _____ _____ ]],
			[[ / _ \| | | |  __ \ | | /  ___|_   _|]],
			[[/ /_\ \ | | | |  \/ | | \ `--.  | |  ]],
			[[|  _  | | | | | __| | | |`--. \ | |  ]],
			[[| | | | |_| | |_\ \ |_| /\__/ / | |  ]],
			[[\_| |_/\___/ \____/\___/\____/  \_/  ]],
         }

		dashboard.section.buttons.val = {
			dashboard.button("f", "󰈞  Find file" , ":Telescope find_files<cr>"),
			dashboard.button("r", "󰦛  Restore" , ":AutoSession restore<cr>"),
			dashboard.button("q", "󰈆  Quit" , ":q!<cr>"),
		}

		alpha.setup(dashboard.config)
	end,
}

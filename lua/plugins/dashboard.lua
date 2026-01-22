local dashboard = require("dashboard")

local icons = require("plugins.icons")

local builtin = require("telescope.builtin")
local Yazi = require("tool.Yazi").Yazi

local notify = require("notify")
notify("Neovim Start", "info", { title = "welcome", timeout = 500 })

dashboard.setup({
	-- 设置主题
	theme = "doom", -- 你可以尝试 'doom', 'hyper', 'alpha', 'gruvbox' 等主题

	-- 配置欢迎信息
	config = {
		header = {
			"Welcome to Neovim!",
			"",
			"⠄⠄⠄⠄⠄⡇⠄⠄⠄⠄⠄⢠⡀⠄⠄⢀⡬⠛⠁⠄⠄⠄⠄⠄⠄⠄⠉⠻⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣧⠄⠄⠙⢦            ",
			"⠄⠄⠄⠄⠄⡇⠄⠄⠄⠄⢰⠼⠙⢀⡴⠋⠄⠄⠄⠄⠄⠄⠄⠄⠄⡠⠖⠄⠄⠙⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣀⡀⠄⠄⠄⡀          ",
			"⠄⠄⠄⠄⠄⡇⠄⠄⠄⠄⠄⠄⡴⠋⠄⠄⠄⠄⠄⠄⠄⠄⠄⢠⠞⠄⠄⠄⠄⠄⠄⠄⠄⠄⠉⠉⠉⠙⠋⠙⠋⠙⠻⠦⠤⣤⣼⣆⣀⣀⣀⣀⡀    ",
			"⠄⠄⠄⠄⠄⢷⠄⠄⠄⠄⢠⠞⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⡰⠃⡄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠉⠉⠉  ",
			"⠄⠄⠄⠄⠄⢸⡀⠄⠄⢠⠏⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣰⠁⣸⠁⠄⠄⠄⠄⠄⠄⠄⠄⢀⠄⠄⡄                    ",
			"⠄⠄⠄⠄⠄⢀⣧⠄⢠⠏⠄⠄⠄⠄⠄⠄⠄⠄⠄⢀⢾⠃⡜⡿⠄⠄⠄⠄⠄⠄⠄⠄⣠⠋⢀⣼⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠸⢾⣀⣠      ",
			"⠄⠄⠄⢀⣠⢌⣦⢀⡏⠄⡄⠄⠄⢠⠃⠄⠄⠐⣶⡁⡞⡼⠄⣇⠄⠄⠄⠄⠄⠄⠄⡴⠁⢠⠎⢸⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢈⠝⠁      ",
			"⠄⢀⠞⠉⠄⠄⠹⡼⠄⣼⠁⠄⠄⡏⠄⠄⢀⡞⠄⠈⣷⠇⠄⢻⠄⠄⠄⠄⠄⢐⣞⣀⣰⣃⣀⣸⠄⢀⠇⠄⠄⠄⠄⠄⠄⠄⠄⠄⠁⠄⠄⠄⠄⠄⢀  ",
			"⢰⠋⠄⠄⠄⠄⢀⡇⢠⡏⠄⠄⢸⠄⠄⢀⠎⠄⠄⠄⡇⠄⠄⢸⡀⠄⠄⠄⢠⢾⢁⡜⠁⠄⠄⢸⠄⣸⠄⠄⠄⠄⠄⠄⡀⠄⠄⠄⠄⠄⠄⠄⢀⡴⠃  ",
			"⡞⠄⠄⠄⠄⠄⢸⠄⡞⡷⠄⠄⡟⠄⢘⡟⠛⠷⠶⣤⣅⠄⠄⠄⣇⠄⠄⢠⠋⡧⠊⠄⠄⠄⠄⢸⢀⠇⠄⠄⠄⠄⠄⢰⠁⠄⠄⠄⠄⠄⢀⡴⠋    ",
			"⢹⠄⠄⠄⠄⠄⡾⢰⠃⡇⠄⠄⡇⠄⡜⢀⣠⣤⠶⠞⠛⠁⠄⠄⠘⡄⡰⠃⠘⠱⣾⣟⡛⠛⠛⠛⡟⠂⠄⠄⠄⠄⠄⡎⠄⠄⠄⠄⣀⠴⡋      ",
			"⠈⢳⠄⠄⠄⠄⡇⡼⠄⢻⠄⢠⡇⢸⠁⠈⠁⠄⠄⠄⠄⠄⠄⠄⠄⠈⠁⠄⠄⠄⠄⠙⠿⣶⣄⡰⠇⠄⠄⠄⠄⠄⡼⠄⠄⠄⡠⢾⣿⣆⢳      ",
			"⣀⣬⠿⠷⠦⠤⣷⣇⡠⠾⡄⢸⣇⢸⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢹⠛⠂⠄⠄⠄⠄⣰⠁⠄⣀⣬⣷⠞⠛⠙⠛⢧⣤⣀   ",
			"⠉⠄⠄⠄⠄⠄⢻⠄⠄⠄⢧⢸⢸⠘⡇⠄⠄⠄⠄⠄⠄⠄⠄⣠⠄⠄⠄⠄⠄⠄⠄⠄⠄⢠⠃⠄⠄⠄⠄⠄⣰⠃⣶⢉⠜⠋⠄⠄⠄⠄⠄⠄⠄⠈⢳  ",
			"⠄⠄⠄⢀⣤⡀⢸⠄⠄⠄⠈⢿⠄⠄⣿⣆⠄⠄⠄⠄⠄⠄⠄⡟⣧⠄⠄⠄⠄⠄⠄⠄⡴⠃⠄⠄⠄⡠⠊⡰⡗⠋⡰⡼⠃⠄⠄⠄⠄⠄⠄⠄⠄⠄⢨  ",
			"⠄⢀⡔⠉⠄⠙⢦⠄⠄⠄⠄⢸⡀⢰⡏⠈⠳⣄⠄⠄⠄⠄⠄⠉⠁⠄⠄⠄⠄⠄⢀⡞⠁⠄⢀⣤⠎⠄⡔⣡⠃⢰⡇⣹⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢼  ",
			"⣰⠋⠄⢀⣴⣖⠒⠓⡆⠄⠄⠈⣇⣿⣿⠄⢸⠹⡷⢄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣠⠋⠄⢀⣴⣿⠏⠠⠊⣴⡏⢠⢻⡇⢹⡆⠄⠄⠄⠄⠄⣷⠄⠄⣰⠋  ",
			"⡇⠄⣰⣿⣿⣿⠒⠋⣛⣄⠄⠄⣹⢸⠈⢧⠸⡄⠹⣄⠙⠶⢶⣶⣶⣶⣶⡶⢾⠃⠄⡴⢋⡾⠋⣀⡴⣞⡝⡰⠃⠄⡇⡸⠉⠳⣄⣀⣀⣀⣿⣦⠞⠁   ",
			"⢷⢰⣿⣿⣿⣿⠄⠈⠁⠈⡇⠄⡏⢸⠄⠈⠓⢧⣀⣈⣤⡤⠖⠛⠉⠁⠄⢡⠃⢠⡞⠓⠚⠓⠚⣳⡞⠈⠘⠁⠄⠄⢹⡇⠄⠄⠄⠈⠉⠁⠸⣷⣀⣀⣀  ",
			"⢸⣿⣿⣿⣿⣿⠄⣿⣁⠜⠁⢸⡇⢸⣄⣀⡀⠘⢦⡀⠄⠄⠄⠄⠄⠄⢀⠏⡴⡻⠄⠄⠄⠠⣎⠹⡄⠄⢀⣀⣤⣤⣀⠁⠄⠄⠄⠄⠄⠄⠄⠈⢻⣿⣿  ",
			"⢸⣿⣿⣿⣿⣿⡇⢸⠄⠄⢀⡴⡇⠈⡇⠈⣩⠗⠒⣵⠆⠄⠄⠄⠄⠄⢸⡞⢰⠃⢀⠄⣀⡰⠟⠒⠒⡿⠉⠄⠄⠄⠈⠑⣄⠄⠄⠄⠄⠄⠄⠄⠈⢿⣿  ",
			"⣿⣿⣿⣿⣿⣿⣷⠎⠄⢠⠏⠄⠹⣄⢣⢠⠃⠄⠄⢤⠤⠄⠄⠠⠤⢶⡏⠄⡎⢠⠞⠋⠁⠄⠄⠄⣸⠁⠄⠄⠄⠄⠄⠄⠈⣧⠄⠄⠄⠄⠄⠄⠄⠄⠻  ",
			"⣿⣿⣿⣿⣿⣿⣃⡀⢠⠏⠄⠄⠄⠄⣨⠇⠄⣠⠴⠚⠁⠄⠄⠄⠄⠈⡇⢰⠃⠄⠄⠄⠄⠄⠄⢰⠇⠄⠄⠄⠄⠄⠄⠄⠄⢹⡀          ",
			"⣿⣿⣿⣿⣿⡿⢉⣇⡎⠄⠄⠄⠄⢰⠇⠄⢨⠇⠄⠄⠄⠄⠄⠄⠄⠄⠘⢾⡀⠄⠄⠄⠄⠄⠄⡞⢀⠄⠄⠄⠄⠄⠄⠄⠄⢸⡇          ",
			"",
			"",
		},
		-- week_head = {
		--   ["Monday"] = "Start your week with power!",
		--   ["Tuesday"] = "Keep up the momentum!",
		--   ["Wednesday"] = "Halfway through the week!",
		--   ["Thursday"] = "Almost there!",
		--   ["Friday"] = "Finish strong!",
		--   ["Saturday"] = "Weekend vibes!",
		--   ["Sunday"] = "Recharge for the week ahead!",
		-- },
		center = {
			{
				icon = "💻 ",
				icon_hl = "Title",
				desc = "LeetCode           ",
				desc_hl = "String",
				key = "ll",
				keymap = ":Leet",
				key_hl = "Number",
				key_format = " %s", -- remove default surrounding `[]`
				action = "Leet",
			},

			{
				icon = "📁 ",
				icon_hl = "Title",
				desc = "Find All File           ",
				desc_hl = "String",
				key = "ff",
				keymap = "SPC ff",
				key_hl = "Number",
				key_format = " %s", -- remove default surrounding `[]`
				action = builtin.find_files,
			},
			{
				icon = "📂 ",
				icon_hl = "Title",
				desc = "Find Recent File           ",
				desc_hl = "String",
				key = "fr",
				keymap = "SPC fr",
				key_hl = "Number",
				key_format = " %s", -- remove default surrounding `[]`
				action = builtin.live_grep,
			},

			{
				icon = "🦆 ",
				icon_hl = "Title",
				desc = "File Manager",
				desc_hl = "String",
				key = "ra",
				keymap = "SPC ra",
				key_hl = "Number",
				key_format = " %s", -- remove default surrounding `[]`
				action = function()
					Yazi("edit")
				end,
			},
			{
				icon = "👻 ",
				icon_hl = "Title",
				desc = "QUIT",
				desc_hl = "String",
				key = "qq",
				keymap = ":q",
				key_hl = "Number",
				key_format = " %s", -- remove default surrounding `[]`
				action = "q",
			},
		},
		footer = "Happy coding with Neovim!",
	},
})

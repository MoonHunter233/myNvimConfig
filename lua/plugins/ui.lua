return {
	-- 主题
	{ "folke/tokyonight.nvim" },
	{ "projekt0n/github-nvim-theme" },
	{ "catppuccin/nvim", name = "catppuccin" },

	-- 状态栏
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy", -- 延迟加载（推荐）
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = require("plugins.ui-config.lualine"),
	},

	-- 文件树
	{
		"nvim-tree/nvim-tree.lua",
		cmd = "NvimTreeToggle", -- 只有用命令才加载
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = require("plugins.ui-config.nvim-tree"),
	},

	-- tmux 窗口导航
	{
		"christoomey/vim-tmux-navigator",
		lazy = false, -- 需要立即生效（因为是按键）
	},
	-- bufferline（顶部 buffer 栏）
	{
		"akinsho/bufferline.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = require("plugins.ui-config.bufferline"),
	},

	-- notification
	{
		"rcarriga/nvim-notify",
		config = require("plugins.ui-config.notification"),
	},
	{
		"folke/noice.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		event = "VeryLazy",
		config = require("plugins.ui-config.noice"),
	},
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = require("plugins.ui-config.dashboard"),
	},

	-- cursor
	{
		"gen740/smoothcursor.nvim",
		event = "VeryLazy",
		config = require("plugins.ui-config.smooth-cursor"),
	},

	{
		"nvim-tree/nvim-web-devicons",
		config = require("plugins.ui-config.web-devicons"),
	},
}

return {
	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = "BufReadPre",
		config = require("plugins.editor-config.treesitter"),
	},

	{ "HiPhish/rainbow-delimiters.nvim", event = "BufReadPre" },

	-- gitsigns（左侧 git 变化提示）
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = require("plugins.editor-config.gitsigns"),
	},

	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- lazygit
	{
		"kdheepak/lazygit.nvim",
		cmd = "LazyGit",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- 编辑增强
	{
		"numToStr/Comment.nvim",
		config = require("plugins.editor-config.comment"),
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = require("plugins.editor-config.autopairs"),
	},
	{ "mg979/vim-visual-multi" },
	{
		"lukas-reineke/indent-blankline.nvim",
		config = require("plugins.editor-config.blankline"),
	},
	{
		"echasnovski/mini.bufremove",
		opts = {},
	},

	-- terminal
	{
		"akinsho/toggleterm.nvim",
		cmd = "ToggleTerm",
		config = require("plugins.editor-config.toggleterm"),
	},

	-- format
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		config = require("plugins.editor-config.format"),
	},

	-- markdown
	{ "tadmccorkle/markdown.nvim", ft = "markdown" },

	{
		"iamcco/markdown-preview.nvim",
		ft = "markdown",
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
	},

	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = "markdown",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
	},

	-- misc
	{
		"kawre/leetcode.nvim",
        config = require("plugins.editor-config.leetcode")
	},
}

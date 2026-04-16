return {
	{
		"mfussenegger/nvim-dap",
		config = require("plugins.dap-config.dap"),
	},

	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "nvim-dap" },
		config = require("plugins.dap-config.dap-ui"),
	},

	{ "nvim-neotest/nvim-nio" },

	{
		"theHamsta/nvim-dap-virtual-text",
		dependencies = { "nvim-dap" },
		config = require("plugins.dap-config.dap-virtual-text"),
	},

	{
		"jay-babu/mason-nvim-dap.nvim",
		dependencies = { "mason.nvim" },
	},
}

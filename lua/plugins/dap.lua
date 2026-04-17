return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"theHamsta/nvim-dap-virtual-text",
			"nvim-neotest/nvim-nio",
			{
				"jay-babu/mason-nvim-dap.nvim",
				dependencies = { "williamboman/mason.nvim" },
			},
		},

		keys = {
			{
				"<F12>",
				function()
					require("dap").continue()
				end,
			},
			{
				"<leader>dd",
				function()
					require("dap").toggle_breakpoint()
				end,
			},
			{
				"<leader>DD",
				function()
					require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
				end,
			},
			{
				"<leader>dp",
				function()
					dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
				end,
			},
		},
		config = function()
			require("plugins.dap-config.dap")()
			require("plugins.dap-config.dap-ui")()
			require("plugins.dap-config.dap-virtual-text")()
		end,
	},
}

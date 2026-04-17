return {
	{
		"williamboman/mason.nvim",
        lazy = false,
		config = require("plugins.lsp-config.mason"),
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = require("plugins.lsp-config.mason-lsp"),
	},

	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		config = require("plugins.lsp-config.lsp"),
	},
}

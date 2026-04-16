return {
	{
		"williamboman/mason.nvim",
		config = require("plugins.lsp-config.mason"),
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "mason.nvim" },
		config = require("plugins.lsp-config.mason-lsp"),
	},

	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		config = require("plugins.lsp-config.lsp"),
	},
}

return {
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		config = require("plugins.cmp-config.cmp"),
	},

	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-buffer" },

	{ "L3MON4D3/LuaSnip" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "rafamadriz/friendly-snippets" },
}

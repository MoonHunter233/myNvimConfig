require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		c = { "clang_format" },
		cpp = { "clang_format" },
		cmake = { "cmake_format" },
		json = { "prettier" },
		markdown = { "prettier" },
		sh = { "shfmt" },
	},

	format_on_save = false,
})

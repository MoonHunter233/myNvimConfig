require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	-- 自动启动
	automatic_enable = false,
	-- 确保安装，根据需要填写
	ensure_installed = {
		"lua_ls",
		-- "stylu",
		-- "jbtls",
		"rust_analyzer",
		-- "cmake",
		-- "clangd",
	},
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
	capabilities = capabilities,
})

lspconfig.jdtls.setup({
	capabilities = capabilities,
})

lspconfig.clangd.setup({})

lspconfig.ast_grep.setup({
	capabilities = capabilities,
})

lspconfig.rust_analyzer.setup({
	capabilities = capabilities,
})

lspconfig.cmake.setup({})

lspconfig.qmlls.setup({
	capabilities = capabilities,
})

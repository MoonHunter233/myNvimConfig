return function()
	local capabilities = require("cmp_nvim_lsp").default_capabilities()
	local lspconfig = require("lspconfig")

	lspconfig.lua_ls.setup({
		capabilities = capabilities,
	})

	lspconfig.jdtls.setup({
		capabilities = capabilities,
	})

	lspconfig.clangd.setup({
		capabilities = capabilities,
	})

	lspconfig.ast_grep.setup({
		capabilities = capabilities,
	})

	lspconfig.rust_analyzer.setup({
		capabilities = capabilities,
	})

	lspconfig.neocmake.setup({
		capabilities = capabilities,
		cmd = { "neocmakelsp", "stdio" },
	})

	lspconfig.qmlls.setup({
		capabilities = capabilities,
	})
end

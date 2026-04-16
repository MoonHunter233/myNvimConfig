return function()
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
end

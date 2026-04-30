return function()
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

	-- keymaps
    local keymap = vim.keymap
	keymap.set("n", "<leader>fa", function()
		require("conform").format({ async = true })
	end, { desc = "Format code" })
	-- keymap.set("n", "<leader>fa", function()
	--   vim.lsp.buf.format { async = true }
	-- end, { desc = "Format code" })
	-- keymap.set("n", "<leader>fw", ":FormatWrite<CR>")
end

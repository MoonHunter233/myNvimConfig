return function()
	-- 配置 nvim-dap
	local dap = require("dap")

	vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "Error", linehl = "", numhl = "WarningMsg" })
	vim.fn.sign_define("DapBreakpointCondition", { text = "🔵", texthl = "Function", linehl = "", numhl = "Normal" })
	vim.fn.sign_define("DapLogPoint", { text = "📝", texthl = "String", linehl = "", numhl = "Normal" })

	require("mason-nvim-dap").setup({
		-- 自动安装支持的调试适配器
		automatic_setup = true,

		-- 自定义配置（如果需要）
		handlers = {
			function(config)
				-- 默认配置，使用 mason 自动安装的适配器
				require("mason-nvim-dap").default_setup(config)
			end,
		},

		-- 指定要自动安装的调试适配器
		ensure_installed = {
			-- "cppdbg", -- C/C++ 调试器
			-- "python", -- 对应 debugpy
			-- "node2", -- JavaScript/TypeScript 调试器
			-- "bash", -- Bash 调试器
		},
	})

	-- cpp
	dap.configurations.cpp = {
		{
			name = "Launch File",
			type = "codelldb", -- 调试适配器类型
			request = "launch",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			end,
			cwd = "${workspaceFolder}", -- 工作目录
			stopOnEntry = false,
			args = {}, -- 可选参数
		},
	}

	-- 为 C 和 Rust 复用配置
	dap.configurations.c = dap.configurations.cpp
	dap.configurations.rust = dap.configurations.cpp

	vim.keymap.set("n", "<F5>", dap.continue) -- 开始/继续调试
	vim.keymap.set("n", "<F10>", dap.step_over) -- 单步跳过
	vim.keymap.set("n", "<F11>", dap.step_into) -- 单步进入
	vim.keymap.set("n", "<F12>", dap.step_out) -- 单步返回
	vim.keymap.set("n", "<leader>dd", dap.toggle_breakpoint) -- 设置/取消断点
	vim.keymap.set("n", "<leader>DD", function()
		dap.set_breakpoint(vim.fn.input("Breakpoint condition: ")) -- 设置条件断点
	end)
	vim.keymap.set("n", "<Leader>lp", function()
		dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: ")) -- 日志断点
	end)
	vim.keymap.set("n", "<Leader>dr", dap.repl.open) -- 打开 REPL 窗口
	vim.keymap.set("n", "<Leader>dl", dap.run_last) -- 运行最后的调试配置
end

require("toggleterm").setup({
	size = function(term)
		if term.direction == "horizontal" then
			return 15
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.3
		else
			return 20
		end
	end, -- 默认终端大小（分屏时为行数）
	open_mapping = [[<C-=>]], -- 打开/关闭终端的快捷键，默认是 Ctrl+\
	hide_numbers = true, -- 隐藏行号
	shade_filetypes = {}, -- 不加暗背景的文件类型
	shade_terminals = true, -- 启用终端背景颜色调整
	shading_factor = 2, -- 背景暗化程度
	start_in_insert = true, -- 终端启动时进入插入模式
	persist_size = true, -- 记住终端大小
	direction = "float", -- 终端方向，可选："vertical" | "horizontal" | "tab" | "float"
	close_on_exit = true, -- 退出终端时自动关闭
	shell = vim.o.shell, -- 终端默认使用的 shell
	float_opts = { -- 浮动终端配置
		border = "curved", -- 边框样式，可选："single" | "double" | "shadow" | "curved"
		width = 100, -- 浮动终端宽度
		height = 30, -- 浮动终端高度
		winblend = 1, -- 窗口透明度
	},
})

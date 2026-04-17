return function()
	require("nvim-tree").setup({
		git = {
			ignore = false, -- 禁用 Git 忽略的文件过滤
		},
		filters = {
			dotfiles = true, -- 显示所有隐藏文件
		},
		renderer = {
			indent_markers = {
				enable = true, -- 启用层级竖线
			},
		},
	})
end

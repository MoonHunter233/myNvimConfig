-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- return dashboard
local opening_dashboard = false

vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		-- 如果正在打开 dashboard，直接跳过（关键）
		if opening_dashboard then
			return
		end

		-- 如果已经是 dashboard，本身不处理
		if vim.bo.filetype == "dashboard" then
			return
		end
		-- 跳过特殊窗口（关键）
		if vim.fn.getcmdwintype() ~= "" then
			return
		end

		-- 跳过特殊 buffer
		if vim.bo.buftype ~= "" then
			return
		end

		local dir = vim.api.nvim_buf_get_name(0)
		local is_dir = vim.fn.isdirectory(dir) == 1

		if is_dir then
			require("mini.bufremove").delete(0, false)
		end

		-- 判断 [No Name]
		if vim.api.nvim_buf_get_name(0) == "" and not vim.bo.modified and vim.bo.buftype == "" then
			opening_dashboard = true

			vim.schedule(function()
				-- 打开 dashboard
				vim.cmd("Dashboard")

				-- 下一次事件循环再解锁（非常关键）
				vim.schedule(function()
					opening_dashboard = false
				end)
			end)
		end

		if is_dir then
			vim.schedule(function()
				require("telescope.builtin").find_files({ cwd = dir })
			end)
		end
	end,
})

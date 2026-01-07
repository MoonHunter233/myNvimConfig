vim.opt.termguicolors = true

require("bufferline").setup({
  options = {
    -- 关闭buffer
    close_command = function(bufnr)
          require("mini.bufremove").delete(bufnr, false)
        end,
            right_mouse_command = function(bufnr)
          require("mini.bufremove").delete(bufnr, false)
        end,
    -- 使用 nvim 内置lsp
    diagnostics = "nvim_lsp",
    -- 左侧让出 nvim-tree 的位置
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left",
        separator = true,
      },
    },
    show_tab_indicators = true, -- 启用标签指示器
    tab_size = 18, -- 设置标签宽度
    separator_style = "slant", -- 分隔符样式
  },
})


-- return dashboard
local opening_dashboard = false

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    -- 如果正在打开 dashboard，直接跳过（关键）
    if opening_dashboard then
      return
    end

    local buf = vim.api.nvim_get_current_buf()

    -- 如果已经是 dashboard，本身不处理
    if vim.bo[buf].filetype == "dashboard" then
      return
    end

    -- 判断 [No Name]
    if vim.api.nvim_buf_get_name(buf) == ""
       and not vim.bo[buf].modified
       and vim.bo[buf].buftype == "" then

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
  end,
})

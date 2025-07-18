vim.opt.termguicolors = true

require("bufferline").setup({
  options = {
    -- 使用 nvim 内置lsp
    diagnostics = "nvim_lsp",
    -- 左侧让出 nvim-tree 的位置
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left",
      },
    },
    show_tab_indicators = true, -- 启用标签指示器
    tab_size = 18, -- 设置标签宽度
    separator_style = "slant", -- 分隔符样式
  },
})

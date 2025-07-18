-- 默认不开启nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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

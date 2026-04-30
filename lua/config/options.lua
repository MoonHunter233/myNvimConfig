local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = true

-- 在单词边界换行
opt.linebreak = true

-- 光标行
opt.cursorline = true

-- 启用鼠标
-- opt.mouse = "n"

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 设置较低的更新时间，减少光标跳动
opt.updatetime = 50

-- 设置屏幕重绘时间，避免过度刷新
opt.redrawtime = 500

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd([[colorscheme tokyonight-night]])

-- 语法错误提示
vim.diagnostic.config({ virtual_text = true })
-- vim.api.nvim_create_autocmd("CursorHold", {
--   callback = function()
--     vim.diagnostic.open_float(nil, { focus = false })
--   end,
-- })

-- show tabline forever. when open file from dashboard, bufferline will be show
vim.opt.showtabline = 2

-- 默认不开启nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

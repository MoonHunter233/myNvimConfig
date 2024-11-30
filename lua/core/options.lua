local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = true

-- 在单词边界换行
opt.linebreak = true

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

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

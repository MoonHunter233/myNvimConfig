vim.g.mapleader = " "
local keymap = vim.keymap
-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("v", "<A-h>", "0") --jump to line head
keymap.set("v", "<A-l>", "$") --jump to line end

keymap.set("v", "<leader>b", "%") -- match brackest

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>vv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>vh", "<C-w>s") -- 垂直新增窗口
keymap.set("n", "<leader>vc", "<C-w>c") -- close window
keymap.set("n", "<C-S-j>", "<C-w>+") -- left top / right bottom reverse
keymap.set("n", "<C-S-k>", "<C-w>-")
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")

keymap.set("n", "<A-h>", "0") --jump to line head
keymap.set("n", "<A-l>", "$") --jump to line end

keymap.set("n", "dH", "d^") -- delete form cursor to line head
keymap.set("n", "dL", "d$") -- delete form cursor to line end

keymap.set("n", "<leader>b", "%") -- match brackest

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<S-L>", ":bnext<CR>")
keymap.set("n", "<S-H>", ":bprevious<CR>")
keymap.set("n", "<S-W>", ":bdelete<CR>")

keymap.set("n", "<leader>kt", ":!kitty --directory=$(pwd) &<CR> | <CR>")

-- ---------- 命令行模式 ---------- ---
-- 在命令行模式下使用 Ctrl+V 粘贴
keymap.set({ "c", "i" }, "<C-v>", "<C-r>+")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- formater
keymap.set("n", "<leader>fa", ":Format<CR>")
keymap.set("n", "<leader>fw", ":FormatWrite<CR>")

-- lazygit
keymap.set("n", "<leader>lg", ":LazyGit<CR>")

-- notify-telescope
keymap.set("n", "<leader>fn", ":Telescope notify<CR>")
keymap.set("n", "<leader>nn", ":Notifications<CR>")

-- leetcode
keymap.set("n", "<leader>lr", ":Leet run<CR>")
keymap.set("n", "<leader>lc", ":Leet submit<CR>")
keymap.set("n", "<leader>lC", ":Leet last_submit<CR>")
keymap.set("n", "<leader>ll", ":Leet lang<CR>")
keymap.set("n", "<leader>li", ":Leet info<CR>")
keymap.set("n", "<leader>lo", ":Leet open<CR>")
keymap.set("n", "<leader>lt", ":Leet tabs<CR>")
keymap.set("n", "<leader>lT", ":Leet list<CR>")
keymap.set("n", "<leader>lk", ":Leet console<CR>")

-- markdown
keymap.set("n", "<leader>md", ":RenderMarkdown<CR>")
keymap.set("n", "<leader>mD", ":RenderMarkdown disable<CR>")

local builtin = require("telescope.builtin")

-- 进入telescope页面会是插入模式，回到正常模式就可以用j和k来移动了

vim.keymap.set("n", "<leader>ff", builtin.find_files, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fgg", builtin.live_grep, {}) -- 环境里要安装ripgrep
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- 查找 Git 提交历史
vim.keymap.set("n", "<leader>fgc", builtin.git_commits, { noremap = true, silent = true })

-- 查找 Git 分支
vim.keymap.set("n", "<leader>fgb", builtin.git_branches, { noremap = true, silent = true })

-- 查看文件内容的所有标签（符号）
vim.keymap.set("n", "<leader>ft", builtin.tags, { noremap = true, silent = true })

-- 查看 Neovim 配置的所有项
vim.keymap.set("n", "<leader>fo", builtin.vim_options, { noremap = true, silent = true })

-- 跳转到定义
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { noremap = true, silent = true })

-- 跳转到声明
vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { noremap = true, silent = true })

-- 跳转到类型定义
vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, { noremap = true, silent = true })

-- 查看引用
vim.keymap.set("n", "<leader>gr", function()
  builtin.lsp_references({
    -- prompt_title = "LSP References", -- 可选，设置标题
    initial_mode = "normal", -- 进入 normal 模式
  })
end, { noremap = true, silent = true })

-- 跳转到实现
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { noremap = true, silent = true })

-- 显示符号的文档
vim.keymap.set("n", "<leader>gh", vim.lsp.buf.hover, { noremap = true, silent = true })

-- 显示函数签名
vim.keymap.set("n", "<leader>gs", vim.lsp.buf.signature_help, { noremap = true, silent = true })

-- 重命名符号
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { noremap = true, silent = true })

-- 显示代码操作（如快速修复）
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true, silent = true })

-- 查看符号的代码上下文（代码大纲）
vim.keymap.set("n", "<leader>gO", vim.lsp.buf.document_symbol, { noremap = true, silent = true })

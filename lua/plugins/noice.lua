require("noice").setup({
  cmdline = {
    enabled = true, -- 启用浮动窗口命令输入
    view = "cmdline_popup", -- 使用浮动窗口样式
    opts = {
      border = "rounded", -- 边框样式，可选：'single', 'double', 'rounded', 'none'
    },
    menu = "popup",
    format = {
      -- 针对不同场景的标题设置
      cmdline = {
        pattern = "^:", -- 针对 `:` 输入
        icon = ">_",
        title = " CmdLine ", -- 标题显示为 "Cmdline"
      },
      search_down = {
        pattern = "^/", -- 针对 `/` 搜索
        title = " Search (Down) ", -- 标题显示为 "Search (Down)"
      },
      search_up = {
        pattern = "^%?", -- 针对 `?` 搜索
        title = " Search (Up) ", -- 标题显示为 "Search (Up)"
      },
    },
  },
  messages = {
    enabled = true, -- 启用消息系统
  },
  popupmenu = {
    enabled = true, -- 支持命令自动补全
  },
  lsp = {
    progress = {
      enabled = true, -- 显示 LSP 进度
    },
    hover = {
      enabled = true, -- 浮动窗口显示悬停信息
    },
    signature = {
      enabled = true, -- 显示函数签名
    },
  },
  views = {
    cmdline_popup = {
      position = {
        row = "96%",
        col = "1"
      }
    }
  }
})

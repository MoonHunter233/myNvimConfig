local function feedkeys(keys, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(keys, true, true, true), mode, true)
end

local function RunWin(opt, full)
  local Win = require("tool.util.FloatWin")
  Win:Create({
    anchor = full and "NW" or "NE",
    width = full and 0.7 or 0.25,
    height = full and 0.7 or 0.9,
    title = "  Code Running ",
  }, {
    buflisted = true,
    pos = full and "cc" or "tr",
  })
  -- vim.cmd("set filetype=toggleterm")
  -- vim.cmd(opt)

  -- 使用 termopen 启动一个交互式终端
  vim.fn.termopen(opt, {
    on_exit = function()
      -- 这里可以添加退出后的回调，例如清理资源
    end,
  })

  -- 进入终端模式
  vim.cmd("startinsert") -- 确保终端进入插入模式后，你可以与终端进行交互
end

local function Run(full)
  vim.cmd("w")
  local filetype = vim.bo.filetype
  local filename = vim.fn.expand("%")
  local runfile = vim.fn.expand("%<")
  vim.cmd("silent! lcd %:p:h")
  if filetype == "c" then
    RunWin(
      string.format('clang "%s" -O2 -g -Wall -o "%s" && ./"%s" && rm -f "%s"', filename, runfile, runfile, runfile),
      full
    )
  elseif filetype == "cpp" then
    RunWin(
      string.format(
        'clang++ "%s" -std=c++23 -O2 -g -Wall -o "%s" && ./"%s" && rm -rf "%s"',
        filename,
        runfile,
        runfile,
        runfile
      ),
      full
    )
  elseif filetype == "rust" then
    RunWin(string.format('rustc "%s" -o "%s" && ./"%s" && rm -rf "%s"', filename, runfile, runfile, runfile), full)
  elseif filetype == "python" then
    RunWin("python3 " .. filename, full)
  elseif filetype == "lua" then
    RunWin("luajit " .. filename, full)
  elseif filetype == "sh" then
    RunWin("bash " .. filename, full)
  elseif filetype == "markdown" then
    require("tool.MdPreview").MarkdownPreview()
  elseif filetype == "html" then
    vim.cmd([[
      tabe
      execute 'live-server --browser=' . g:browser
      tabclose
    ]])
    feedkeys("<ESC>", "n")
  else
    RunWin(string.format('echo "cannot run this filetype: %s"', filetype), full)
  end
end

return {
  running = Run,
}

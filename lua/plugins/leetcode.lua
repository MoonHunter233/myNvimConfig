local notify = require("notify")

require("leetcode").setup({
  ---@type string
  arg = "leetcode.nvim",

  ---@type lc.lang
  lang = "c",

  cn = { -- leetcode.cn
    enabled = true, ---@type boolean
    translator = false, ---@type boolean
    translate_problems = true, ---@type boolean
  },

  ---@type lc.storage
  storage = {
    home = vim.fn.stdpath("data") .. "/leetcode",
    cache = vim.fn.stdpath("cache") .. "/leetcode",
  },

  ---@type table<string, boolean>
  plugins = {
    non_standalone = false,
  },

  ---@type boolean
  logging = true,

  injector = { ---@type table<lc.lang, lc.inject>
    ["python3"] = {
      before = true,
    },
    ["cpp"] = {
      before = { "#include <bits/stdc++.h>", "using namespace std;" },
      after = "int main() {}",
    },
    ["c"] = {
      before = { "#include <stdio.h>", "#include <stdlib.h>" },
      after = "int main() {}",
    },
    ["java"] = {
      before = "import java.util.*;",
    },
  },

  cache = {
    update_interval = 60 * 60 * 24 * 7, ---@type integer 7 days
  },

  console = {
    open_on_runcode = true, ---@type boolean

    dir = "row", ---@type lc.direction

    size = { ---@type lc.size
      width = "90%",
      height = "75%",
    },

    result = {
      size = "60%", ---@type lc.size
    },

    testcase = {
      virt_text = true, ---@type boolean

      size = "40%", ---@type lc.size
    },
  },

  description = {
    position = "left", ---@type lc.position

    width = "40%", ---@type lc.size

    show_stats = true, ---@type boolean
  },

  hooks = {
    ---@type fun()[]
    ["enter"] = {
      function()
        notify("Hollo  😽", "info", { title = "LeetCode" })
      end,
    },

    ---@type fun(question: lc.ui.Question)[]
    ["question_enter"] = {
      function()
        notify("genshin start 😼", "info", { title = "LeetCode" })
      end,
    },

    ---@type fun()[]
    ["leave"] = {
      function()
        notify("CU  😿", "info", { title = "LeetCode" })
      end,
    },
  },

  keys = {
    toggle = { "q" }, ---@type string|string[]
    confirm = { "<CR>" }, ---@type string|string[]

    reset_testcases = "r", ---@type string
    use_testcase = "U", ---@type string
    focus_testcases = "H", ---@type string
    focus_result = "L", ---@type string
  },

  ---@type lc.highlights
  theme = {},

  ---@type boolean
  image_support = false,
})

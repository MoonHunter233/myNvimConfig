-- require("fontStyle")
--
-- -- 插件
-- require("plugins.lualine")
-- require("plugins.nvim-tree")
-- require("plugins.treesitter")
-- require("plugins.lsp")
-- require("plugins.cmp")
-- require("plugins.comment")
-- require("plugins.autopairs")
-- require("plugins.bufferline")
-- require("plugins.gitsigns")
-- require("plugins.telescope")
-- require("plugins.smooth-cursor")
-- require("plugins.dashboard")
-- require("plugins.blankline")
-- require("plugins.notification")
-- require("plugins.noice")
-- require("plugins.leetcode")
-- require("plugins.toggleterm")
-- require("plugins.dap")
-- require("plugins.format")

_G.browser = "firefox"

require("config.lazy")
require("config.options")
require("config.keymaps")

require("tool")

require("nvide")

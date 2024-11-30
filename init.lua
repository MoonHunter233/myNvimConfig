require("plugins.plugins-setup")

require("core.options")
require("core.keymaps")

require("tool")

require("nvide")

require("fontStyle")

-- 插件
require("plugins.lualine")
require("plugins.nvim-tree")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.cmp")
require("plugins.comment")
require("plugins.autopairs")
require("plugins.bufferline")
require("plugins.gitsigns")
require("plugins.telescope")
require("plugins.formatter")
require("plugins.smooth-cursor")
require("plugins.dashboard")
require("plugins.blankline")
require("plugins.toggleterm")

_G.kind_icons = {
  Text = " 󰉿 ",
  Method = " 󰆧 ",
  Function = " 󰡱 ",
  Constructor = "  ",
  Field = " 󰜢 ",
  Variable = " 󰀫 ",
  Class = " 󰠱 ",
  Interface = "  ",
  Module = "  ",
  Property = " 󰜢 ",
  Unit = " 󰑭 ",
  Value = " 󰎠 ",
  Enum = "  ",
  Keyword = " 󰌋 ",
  Snippet = "  ",
  Color = " 󰏘 ",
  File = " 󰈙 ",
  Reference = " 󰈇 ",
  Folder = " 󰉋 ",
  EnumMember = "  ",
  Constant = " 󰏿 ",
  Struct = " 󰙅 ",
  Event = "  ",
  Operator = " 󰆕 ",
  TypeParameter = " 󰅲 ",
}

_G.browser = "firefox"

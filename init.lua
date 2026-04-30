vim.g.mapleader = " "
vim.g.maplocalleader = " "

_G.browser = "firefox"

require("config.lazy")
require("config.autocmds")
require("config.keymaps")
require("config.options")
require("fontStyle")

require("tool")

require("nvide")

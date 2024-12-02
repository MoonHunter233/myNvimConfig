-- 自动安装packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- 保存此文件自动更新安装软件
-- 注意PackerCompile改成了PackerSync
-- plugins.lua改成了plugins-setup.lua，适应本地文件名字
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use("folke/tokyonight.nvim") -- 主题
  use("projekt0n/github-nvim-theme") -- gtihub theme
  use({ "catppuccin/nvim", as = "catppuccin" }) -- theme
  use({
    "nvim-lualine/lualine.nvim", -- 状态栏
    requires = { "kyazdani42/nvim-web-devicons", opt = true }, -- 状态栏图标
  })
  use({
    "nvim-tree/nvim-tree.lua", -- 文档树
    requires = {
      "nvim-tree/nvim-web-devicons", -- 文档树图标
    },
  })
  use("christoomey/vim-tmux-navigator") -- 用ctl-hjkl来定位窗口
  use("nvim-treesitter/nvim-treesitter") -- 语法高亮
  use("p00f/nvim-ts-rainbow") -- 配合treesitter，不同括号颜色区分
  use({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim", -- 这个相当于mason.nvim和lspconfig的桥梁
    "neovim/nvim-lspconfig",
    "jay-babu/mason-nvim-dap.nvim",
  })
  -- 自动补全
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("L3MON4D3/LuaSnip") -- snippets引擎，不装这个自动补全会出问题
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")
  use("hrsh7th/cmp-path") -- 文件路径
  use("hrsh7th/cmp-buffer")

  use("numToStr/Comment.nvim") -- gcc和gc注释
  use("windwp/nvim-autopairs") -- 自动补全括号

  use("akinsho/bufferline.nvim") -- buffer分割线
  use("lewis6991/gitsigns.nvim") -- 左则git提示

  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8", --文件检索
    requires = { { "nvim-lua/plenary.nvim" } },
  })

  use("mhartington/formatter.nvim") --formatter

  use("gen740/smoothcursor.nvim")

  use({
    "kdheepak/lazygit.nvim", --lazygit
    -- optional for floating window border decoration
    requires = {
      "nvim-lua/plenary.nvim",
    },
  })

  use("glepnir/dashboard-nvim") -- nvim dashboard

  use("nvim-tree/nvim-web-devicons")

  use("mg979/vim-visual-multi") -- 选中多个

  use("lukas-reineke/indent-blankline.nvim") -- 括号竖线

  use({
    "mfussenegger/nvim-dap", -- dap调试
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
  })

  use("rcarriga/nvim-notify") -- notification

  use("MunifTanjim/nui.nvim") -- nui

  use("kawre/leetcode.nvim") -- leetcode

  use("tadmccorkle/markdown.nvim") -- markdown hotkey

  use({
    "MeanderingProgrammer/render-markdown.nvim",
    after = { "nvim-treesitter" },
    requires = { "echasnovski/mini.nvim", opt = true }, -- if you use the mini.nvim suite
    -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
    -- requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
  })

  if packer_bootstrap then
    require("packer").sync()
  end
end)

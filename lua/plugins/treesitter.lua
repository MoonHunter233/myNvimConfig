require("nvim-treesitter.configs").setup({
  -- 添加不同语言
  ensure_installed = {
    "vim",
    "bash",
    "c",
    "cpp",
    "java",
    "javascript",
    "json",
    "lua",
    "python",
    "typescript",
    "tsx",
    "css",
    "rust",
    "markdown",
    "markdown_inline",
    "ini",
    "yaml",
    "toml",
    "editorconfig",
  }, -- one of "all" or a list of languages
  -- ensure_installed = "all",
  highlight = { enable = true },
  indent = { enable = true },

  -- 不同括号颜色区分
  rainbow = {
    enable = false,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
})

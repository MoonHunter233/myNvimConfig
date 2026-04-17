return function()
    -- keymaps
    local keymap = vim.keymap
	keymap.set("n", "<leader>md", ":RenderMarkdown<CR>")
	keymap.set("n", "<leader>mD", ":RenderMarkdown disable<CR>")
	keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>")
end

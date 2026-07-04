return {
    {
        "iamcco/markdown-preview.nvim",

        ft = { "markdown" },

        build = "cd app && npm install",

        cmd = {
            "MarkdownPreview",
            "MarkdownPreviewStop",
            "MarkdownPreviewToggle",
        },

        keys = {
            {
                "<leader>mp",
                "<cmd>MarkdownPreviewToggle<CR>",
                desc = "Markdown Preview",
            },
        },
    },
}

return {
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        cmd = "Mason",

        opts = {
            ui = {
                border = "rounded",
            },
        },
    },

    {
        "williamboman/mason-lspconfig.nvim",

        dependencies = {
            "williamboman/mason.nvim",
        },

        opts = {
            automatic_enable = true,
        },
    },
}

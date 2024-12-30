-- use for plugins that require little to none config

return {
    "nvim-lua/plenary.nvim",
    {
        "akinsho/bufferline.nvim", 
        version = "*", 
        dependencies = { 
            "nvim-tree/nvim-web-devicons"
        }
    },
}
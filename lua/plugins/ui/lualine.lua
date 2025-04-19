return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    event = "VeryLazy",
    opts = {
        options = {
            theme = "auto",
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
        },
        -- extensions = { "nvim-tree" },
        sections = {
            lualine_b = { "branch", "diff" },
            lualine_x = { "filesize","encoding","filetype" },
            lualine_y = { 'progress' }, -- 当前所在行数占总行数的百分比
            lualine_z = { 'location' } -- 当前所在的行数和列数
        },
    },
}

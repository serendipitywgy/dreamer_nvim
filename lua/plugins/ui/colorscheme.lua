return {
  {
    "folke/tokyonight.nvim",
    lazy = false,  -- 确保主题立即加载
    priority = 1000,  -- 给主题高优先级
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)  -- 确保将opts传递给setup
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}

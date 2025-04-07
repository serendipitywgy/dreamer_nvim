return {
  {
    "folke/tokyonight.nvim",
    -- 下面是透明背景，暂时注释
    config = function()
      vim.cmd.colorscheme("tokyonight")
    end,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}

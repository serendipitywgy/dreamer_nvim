-- 自动命令配置
local function augroup(name)
  return vim.api.nvim_create_augroup("my_" .. name, { clear = true })
end

-- 在退出命令行模式后清除搜索高亮（当命令是搜索命令时）
vim.api.nvim_create_autocmd("CmdlineLeave", {
  group = augroup("clear_search_highlight"),
  callback = function(event)
    if (event.match == "/" or event.match == "?") and vim.o.incsearch then
      vim.defer_fn(function()
        vim.cmd("nohlsearch")
      end, 50)
    end
  end,
})

-- 在这里可以添加其他自动命令

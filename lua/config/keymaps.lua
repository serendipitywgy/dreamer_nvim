-- vim.keymap.set("i", "kj", "<Esc>", { silent = true })
-- vim.keymap.set("t", "kj", "<C-\\><C-n>", { silent = true })
-- 定义一个函数来设置多个键映射
local function set_keymaps(mode, keymaps, target, opts)
  for _, keymap in ipairs(keymaps) do
    vim.keymap.set(mode, keymap, target, opts)
  end
end

-- 插入模式下，按下 kj 或 KJ 不执行任何操作
set_keymaps("i", { "kj", "KJ" }, "<Esc>", { silent = true })

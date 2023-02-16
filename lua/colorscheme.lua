local colorscheme = "tokyonight"
-- pcall作用是捕获错误，如果没有pcall，相当于vim.cmd('colorscheme'..colorscheme)
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  -- lua中用..来连接字符串
  vim.notify("colorscheme " .. colorscheme .. " 没有找到！")
  return
end

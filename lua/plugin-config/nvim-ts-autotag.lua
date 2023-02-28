local status, autopairs = pcall(require, "nvim-ts-autotag")
if not status then
  vim.notify("没有找到 nvim-ts-autotag")
  return
end
autopairs.setup({
  autotag = {
    enable = true
  }
})

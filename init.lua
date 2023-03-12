local vimFn = vim.fn
local lazypath = vimFn.stdpath("data") .. "/lazy/lazy.nvim"
if vimFn.empty(vimFn.glob(lazypath)) > 0 then
  vim.notify("正在安装lazy.nvim，请稍后...")
  vimFn.system({
    "git",
    "clone",
    "git@github.com:folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local statusOk, lazy = pcall(require, "lazy")
if not statusOk then
  vim.notify("没有安装lazy.nvim")
  return
else
  require("setup")
end
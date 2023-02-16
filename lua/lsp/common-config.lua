local M = {}
M.keyAttach = function(bufnr)
  local function buf_set_keymap(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, buffer = bufnr })
  end
  -- 绑定快捷键
  require("keybindings").mapLSP(buf_set_keymap)
end

M.flags = {
  debounce_text_changes = 150,
}

return M

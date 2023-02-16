local common = require("lsp.common-config")

local opts = {
  flags = common.flags,
  on_attach = function(client, bufnr)
    common.keyAttach(bufnr)
  end,
  -- 语言配置服务
  settings = {
    TypeScript = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

-- 导出on_setup函数，传入定制的opts参数来初始化语言服务
return {
  on_setup = function(server)
    server.setup(opts)
  end,
}


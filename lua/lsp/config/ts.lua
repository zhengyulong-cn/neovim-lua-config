local common = require("lsp.common-config")

local opts = {
  flags = common.flags,
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
  on_attach = function(client, bufnr)
    common.keyAttach(bufnr)
  end,
}

-- 导出on_setup函数，传入定制的opts参数来初始化语言服务
return {
  on_setup = function(server)
    server.setup(opts)
  end,
}


local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.notify("正在安装Pakcer.nvim，请稍后...")
  vim.fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "git@github.com:wbthomason/packer.nvim.git",
    install_path,
  })

  -- https://github.com/wbthomason/packer.nvim/issues/750
  local rtp_addition = vim.fn.stdpath("data") .. "/site/pack/*/start/*"
  if not string.find(vim.o.runtimepath, rtp_addition) then
    vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
  end
  vim.notify("Pakcer.nvim 安装完毕")
end

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("没有安装 packer.nvim")
  return
end

packer.startup(
  function(use)
    -- Packer可以管理自身
    use("git@github.com:wbthomason/packer.nvim")
    -- 插件列表
    -- 主题
    use("git@github.com:folke/tokyonight.nvim")
    -- nvim-tree
    use({ "git@github.com:kyazdani42/nvim-tree.lua", requires = "git@github.com:kyazdani42/nvim-web-devicons" })
    -- bufferline
    use({ "git@github.com:akinsho/bufferline.nvim", requires = { "git@github.com:yazdani42/nvim-web-devicons", "git@github.com:moll/vim-bbye" }})
    -- lualine
    use({ "git@github.com:nvim-lualine/lualine.nvim", requires = { "git@github.com:kyazdani42/nvim-web-devicons" } })
    use("git@github.com:arkav/lualine-lsp-progress")
    -- telescope
    use { "git@github.com:nvim-telescope/telescope.nvim", requires = { "git@github.com:nvim-lua/plenary.nvim" } }
    -- treesitter
    use({ "git@github.com:nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    -- LSP Server管理器
    use("git@github.com:williamboman/mason.nvim")
    use("git@github.com:williamboman/mason-lspconfig.nvim")
    -- Lspconfig
    use({ "git@github.com:neovim/nvim-lspconfig" })
    ------------------代码补全---------------
    -- 补全引擎
    use("git@github.com:hrsh7th/nvim-cmp")
    -- snippet 引擎
    use("git@github.com:hrsh7th/vim-vsnip")
    -- 补全源
    use("git@github.com:hrsh7th/cmp-vsnip")
    use("git@github.com:hrsh7th/cmp-nvim-lsp")
    use("git@github.com:hrsh7th/cmp-buffer")
    use("git@github.com:hrsh7th/cmp-path")
    use("git@github.com:hrsh7th/cmp-cmdline")
    -- 常见编程语言代码段
    use("git@github.com:rafamadriz/friendly-snippets")
    -- indent-blankline
    use("git@github.com:lukas-reineke/indent-blankline.nvim")
    -- nvim-autopairs
    use("git@github.com:windwp/nvim-autopairs")
    -- nvim-ts-autotag
    use("git@github.com:windwp/nvim-ts-autotag")
    -- Comment
    use("git@github.com:numToStr/Comment.nvim")
    -- gitsigns
    use("git@github.com:lewis6991/gitsigns.nvim")
    -- toggleterm终端
    use("git@github.com:akinsho/toggleterm.nvim")
  end
)

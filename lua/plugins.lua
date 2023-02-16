local packer = require("packer")
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
  end
)
local plugins = {
  {
    "git@github.com:folke/tokyonight.nvim.git",
    lazy = true,
    opts = {
      style = "moon"
    },
  },
  {
    "git@github.com:nvim-tree/nvim-tree.lua.git",
    lazy = true,
  },
  {
    "git@github.com:akinsho/bufferline.nvim.git",
    lazy = true,
    dependencies = {
      "git@github.com:moll/vim-bbye.git",
      "git@github.com:nvim-tree/nvim-web-devicons.git",
    }
  },
  {
    "git@github.com:nvim-lualine/lualine.nvim.git",
    lazy = true,
    dependencies = { "git@github.com:nvim-tree/nvim-web-devicons.git" },
  },
  {
    "git@github.com:arkav/lualine-lsp-progress.git",
    lazy = true,
  },
  {
    "git@github.com:nvim-telescope/telescope.nvim.git",
    lazy = true,
    dependencies = { "git@github.com:nvim-lua/plenary.nvim.git" },
  },
  -- use({ "git@github.com:nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  {
    "git@github.com:nvim-treesitter/nvim-treesitter.git",
    lazy = true,
  },
  {
    "git@github.com:williamboman/mason.nvim.git",
    lazy = true,
  },
  {
    "git@github.com:neovim/nvim-lspconfig.git",
    lazy = true,
  },
  {
    "git@github.com:williamboman/mason-lspconfig.nvim.git",
    lazy = true,
  },
  -- 代码补全
  {
    "git@github.com:hrsh7th/nvim-cmp.git",
    lazy = true,
  },
  {
    "git@github.com:hrsh7th/vim-vsnip.git",
    lazy = true,
  },
  {
    "git@github.com:hrsh7th/cmp-nvim-lsp.git",
    lazy = true,
  },
  {
    "git@github.com:hrsh7th/cmp-vsnip.git",
    lazy = true,
  },
  {
    "git@github.com:hrsh7th/cmp-buffer.git",
    lazy = true,
  },
  {
    "git@github.com:hrsh7th/cmp-path.git",
    lazy = true,
  },
  {
    "git@github.com:hrsh7th/cmp-cmdline.git",
    lazy = true,
  },
  {
    "git@github.com:rafamadriz/friendly-snippets.git",
    lazy = true,
  },
  {
    "git@github.com:lukas-reineke/indent-blankline.nvim.git",
    lazy = true,
  },
  {
    "git@github.com:windwp/nvim-autopairs.git",
    lazy = true,
  },
  {
    "git@github.com:windwp/nvim-ts-autotag.git",
    lazy = true,
  },
  {
    "git@github.com:numToStr/Comment.nvim.git",
    lazy = true,
  },
  {
    "git@github.com:lewis6991/gitsigns.nvim.git",
    lazy = true,
  },
  {
    "git@github.com:akinsho/toggleterm.nvim.git",
    lazy = true,
  },
}
local statusOk, lazy = pcall(require, "lazy")
if statusOk then
  lazy.setup(plugins)
  require("plugins")
end
return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  --  These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "typescript-language-server",
        "eslint-lsp",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "json",
        "python",
        "typescript",
        "tsx",
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      fold = {
        enable = true,
      },
    },
  },

  --custom plugins
  {
    "Exafunction/codeium.vim",
    config = function() end,
    event = "BufEnter",
  }, --run :Codeium Auth

  {
    "windwp/nvim-ts-autotag",
    event = { "BufRead", "BufNewFile" },
    config = function()
      require("nvim-ts-autotag").setup {
        filetypes = { "html", "javascript", "typescript", "tsx", "vue" }, -- Add or adjust file types
      }
    end,
    after = "nvim-treesitter",
  },

  {
    "mg979/vim-visual-multi",
    branch = "master",
    event = { "BufRead", "BufNewFile" },
    config = function() end,
  },
}

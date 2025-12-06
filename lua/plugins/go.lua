return {
  -- dap (debug)
  {
    "mfussenegger/nvim-dap",
  },

  -- Go debugging adapter setup
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      require("dap-go").setup()
    end,
  },

  -- Go tools: formatting, linting, quickfix, tests
  {
    "ray-x/go.nvim",
    ft = "go",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup({
        lsp_cfg = true,
        lsp_gofumpt = true,
        lsp_keymaps = true,
        lsp_inlay_hints = { enable = true },
      })
    end,
    build = ':lua require("go.install").update_all_sync()',
  },

  -- ensure treesitter Go parser
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "go", "gomod", "gosum", "gowork" })
    end,
  },

  -- ensure mason installs gopls, delve, go tools
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "gopls",
        "goimports",
        "golangci-lint",
        "delve",
      })
    end,
  },
}

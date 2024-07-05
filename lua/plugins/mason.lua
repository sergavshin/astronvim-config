---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "ansiblels",
        "clangd",
        "cssls",
        "dockerls",
        "docker_compose_language_service",
        "gopls",
        "graphql",
        "html",
        "lua_ls",
        "marksman",
        "prismals",
        "pyright",
        "rust_analyzer",
        "sqlls",
        "stylelint_lsp",
        "svelte",
        "taplo",
        "tsserver",
        "volar",
        "yamlls",
      })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "prettierd",
        "stylua",
        "luacheck",
        "ansible-lint",
        "fixjson",
        "yamllint",
        "stylelint",
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        -- "python",
      })
    end,
  },
}

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- check if an `indent` table exists, if not, create it
    if not opts.indent then opts.indent = {} end
    -- once we know it is created, we can set the sub-keys
    opts.indent.enable = true
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "comment",
      "css",
      "csv",
      "diff",
      "dockerfile",
      "fish",
      "git_config",
      "git_rebase",
      "gitattributes",
      "gitcommit",
      "gitignore",
      "go",
      "html",
      "ini",
      "java",
      "javascript",
      "jsdoc",
      "json",
      "json5",
      "kotlin",
      "lua",
      "luadoc",
      "ninja",
      "php",
      "prisma",
      "python",
      "requirements",
      "rust",
      "scss",
      "sql",
      "ssh_config",
      "svelte",
      "toml",
      "typescript",
      "vim",
      "vimdoc",
      "vue",
      "xml",
      "yaml",
    })
  end,
}

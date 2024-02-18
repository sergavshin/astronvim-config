return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin", -- remote to use
    channel = "stable", -- "stable" or "nightly"
    version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly", -- branch name (NIGHTLY ONLY)
    commit = nil, -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false, -- automatically quit the current session after a successful update
    remotes = { -- easily add new remotes to track
      --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
      --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
      --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
    },
  },
  -- Set colorscheme to use
  colorscheme = "catppuccin",
  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = true,
    underline = true,
  },
  icons = {
    VimIcon = "",
    ScrollText = "",
  },
  heirline = {
    -- define the separators between each section
    separators = {
      left = { "", " " }, -- separator for the left side of the statusline
      right = { " ", "" }, -- separator for the right side of the statusline
      -- left = { "", " " }, -- separator for the left side of the statusline
      -- right = { " ", "" }, -- separator for the right side of the statusline
      -- tab = { "", "" },
    },
    -- add new colors that can be used by heirline
    colors = function(hl)
      local get_hlgroup = require("astronvim.utils").get_hlgroup
      -- use helper function to get highlight group properties
      local comment = get_hlgroup "Comment"
      local fileinfo = get_hlgroup "DiffText"
      hl.git_branch_fg = comment.fg
      hl.git_added = comment.fg
      hl.git_changed = comment.fg
      hl.git_removed = comment.fg
      hl.blank_bg = get_hlgroup("Folded").fg
      hl.file_info_bg = get_hlgroup("Error").fg
      hl.file_info_fg = fileinfo.bg
      hl.nav_icon_bg = get_hlgroup("String").fg
      hl.nav_fg = hl.nav_icon_bg
      hl.folder_icon_bg = fileinfo.bg
      return hl
    end,
    attributes = {
      mode = { bold = false },
    },
    icon_highlights = {
      file_icon = {
        statusline = false,
      },
    },
  },
  lsp = {
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "python",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        -- "lua_ls",
      },
      timeout_ms = 1000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    config = {
      stylelint_lsp = {
        filetypes = {
          "css",
          "less",
          "scss",
          "sugarss",
          "vue",
          "wxss",
        },
      },
    },
    -- enable servers that you already have installed without mason
    servers = {
      -- "pyright"
    },
  },
  -- Configure require("lazy").setup() options
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },
  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    vim.lsp.set_log_level "off"
    vim.wo.foldcolumn = "0"
    vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver50-Cursor,r-cr-o:hor20"
    -- Set up custom filetypes
    vim.filetype.add {
      filename = {
        [".env"] = "sh",
        [".env.example"] = "sh",
        [".env.local"] = "sh",
        [".env.development"] = "sh",
        [".env.development.local"] = "sh",
        [".env.test"] = "sh",
        [".env.test.local"] = "sh",
      },
    }
  end,
}

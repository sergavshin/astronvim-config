return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.gruvbox-nvim" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.motion.hop-nvim" },
  { import = "astrocommunity.motion.nvim-spider" },
  { import = "astrocommunity.terminal-integration.vim-tmux-yank" },
  -- { import = "astrocommunity.split-and-window.minimap-vim" },
  { import = "astrocommunity.editing-support.true-zen-nvim" },
  -- { import = "astrocommunity.editing-support.multicursors-nvim" },
}

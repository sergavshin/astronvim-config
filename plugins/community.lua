return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  { import = "astrocommunity.motion.hop-nvim" },
  { import = "astrocommunity.motion.harpoon" },
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup {
        filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
      }
    end,
  },
  -- {
  --   "olimorris/onedarkpro.nvim",
  --   opts = {
  --     colors = {
  --       bg = "#"
  --     }
  --   }
  -- }
}

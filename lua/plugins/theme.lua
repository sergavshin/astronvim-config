---@type LazySpec
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  config = function()
    require("catppuccin").setup {
      flavour = "mocha",
      integrations = {
        hop = true,
        gitsigns = true,
        gitgutter = true,
        cmp = true,
        mason = true,
        harpoon = true,
        treesitter = true,
        which_key = true,
        neotest = true,
        aerial = true,
      },
    }
  end,
}

return {
  "chrisgrieser/nvim-spider",
  keys = {
    {
      "<A-w>",
      "<cmd>lua require('spider').motion('w')<CR>",
      mode = { "n", "x", "o" },
      desc = "Next word",
    },
    {
      "<A-b>",
      "<cmd>lua require('spider').motion('b')<CR>",
      mode = { "n", "x", "o" },
      desc = "Previous word",
    },
  },
  opts = {},
}

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

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

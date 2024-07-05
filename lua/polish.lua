-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

vim.lsp.set_log_level "off"
vim.wo.foldcolumn = "0"
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

vim.opt.smartindent = false
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.cmd.filetype "indent off"
vim.bo.expandtab = true
vim.bo.shiftwidth = 2
vim.bo.tabstop = 2
vim.bo.softtabstop = 2

local nt = require("nt")

vim.lsp.start({
    name = 'rust',
    cmd = {'rust-analyzer'},
    root_dir = nt.find_root_dir()
})

vim.opt_local.number = true
vim.opt_local.relativenumber = true
vim.opt_local.signcolumn = 'yes'

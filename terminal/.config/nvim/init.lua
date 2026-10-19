local vimrc = vim.fn.stdpath("config") .. "/vim_init.vim"
vim.cmd.source(vimrc)


local clangd_config = require("clangd")

vim.lsp.config("clangd", clangd_config)
vim.lsp.enable("clangd")

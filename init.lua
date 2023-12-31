-- Lua initialization file
vim.g.nightflyTransparent = true

require("samuelrudqvist.plugins-setup")
require("samuelrudqvist.core.options")
require("samuelrudqvist.core.keymaps")
require("samuelrudqvist.core.colorscheme")
require("samuelrudqvist.plugins.comment")
require("samuelrudqvist.plugins.nvim-tree")
require("samuelrudqvist.plugins.lualine")
require("samuelrudqvist.plugins.telescope")
require("samuelrudqvist.plugins.nvim-cmp")
require("samuelrudqvist.plugins.lsp.mason")
require("samuelrudqvist.plugins.flutter")
require("samuelrudqvist.plugins.lsp.lspsaga")
require("samuelrudqvist.plugins.lsp.lspconfig")
require("samuelrudqvist.plugins.lsp.null-ls")
require("samuelrudqvist.plugins.autopairs")
require("samuelrudqvist.plugins.treesitter")
require("samuelrudqvist.plugins.gitsigns")

vim.cmd([[
  augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=300})
  augroup END
]])
-- Set tabwidth and shiftwidth to 2 for Dart files
-- vim.api.nvim_command("autocmd FileType dart setlocal tabstop=2 shiftwidth=2")

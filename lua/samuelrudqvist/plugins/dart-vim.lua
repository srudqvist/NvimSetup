local status, dart_vim = pcall(require, "dart-vim-plugin")
if not setup then
	return
end

dart_vim.setup({

	-- let g:dart_format_on_save = v:true
})

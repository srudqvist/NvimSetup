-- LSP setup
local nvim_lsp = require("lspconfig")

-- Dart LSP setup
nvim_lsp.dartls.setup({
	cmd = { "dart", "language-server", "--protocol=lsp" },
	filetypes = { "dart" },
	init_options = {
		closingLabels = true,
		flutterOutline = true,
		onlyAnalyzeProjectsWithOpenFiles = true,
		outline = true,
		suggestFromUnimportedLibraries = true,
	},
	root_dir = nvim_lsp.util.root_pattern("pubspec.yaml"),
	settings = {
		dart = {
			analysisExcludedFolders = { "<path-to-excluded-folders>" },
			completeFunctionCalls = true,
			showTodos = true,
		},
	},
	on_attach = function(client, bufnr)
		local function buf_set_keymap(...)
			vim.api.nvim_buf_set_keymap(bufnr, ...)
		end
		local opts = { noremap = true, silent = true }

		-- Enable Telescope LSP-based implementation lookup
		buf_set_keymap("n", "gI", '<cmd>lua require("telescope.builtin").lsp_implementations()<CR>', opts)
		buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)

		print(vim.inspect(client.server_capabilities))
	end,
	capabilities = vim.lsp.protocol.make_client_capabilities(),
})

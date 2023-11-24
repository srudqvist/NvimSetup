local mason_status, mason = pcall(require, "mason")
if not mason_status then
    return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
    return
end

mason.setup()

-- see available servers: https://github.com/williamboman/mason-lspconfig.nvim
mason_lspconfig.setup({
    ensure_installed = {
        "tsserver",
        "eslint",
        "html",
        "cssls",
        "tailwindcss",
        "lua_ls",
        "prosemd_lsp",
    },
})

require("mason").setup()

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    float = {
        border = "rounded",
    },
})

local servers = {
    "basedpyright",
    "ts_ls",
    "clangd",
    "lua_ls",
    "jsonls",
    "bashls",
    "html",
    "cssls",
    "tailwindcss",
    "marksman",
}

require("mason-lspconfig").setup {
    ensure_installed = servers
}
local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.lsp.config('*', {
    capabilities = capabilities,
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			completion = { postfix = "." },
			diagnostics = {
				disable = { "lowercase-global" },
				globals = { "vim" },
			},
			format = { enable = false },
			workspace = {
				checkThirdParty = false,
				ignoreDir = { ".vscode", "node_modules" },
				-- library = vim.api.nvim_get_runtime_file("", true),
			},
			runtime = { version = "LuaJIT" },
			telemetry = { enable = false },
		},
	},
})

for _, lang in ipairs(servers) do
    vim.lsp.enable(lang)
end

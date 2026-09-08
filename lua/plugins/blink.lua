require("blink.cmp").setup({
    keymap = { preset = "default" },
    appearance = { nerd_font_variant = "mono" },
    completion = {
        documentation = { auto_show = true },
        menu = { border = "rounded" },
        ghost_text = { enabled = true }, -- shows preview of completion inline before accepting
    },
    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = {
        implementation = "lua",
    },
})

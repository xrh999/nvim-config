-- adding all the packages
vim.pack.add ({
    { src = "https://github.com/neanias/everforest-nvim" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter.git" },
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
    { src = "https://github.com/nvim-lua/plenary.nvim"},
    { src = "https://github.com/nvim-tree/nvim-web-devicons"},
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/williamboman/mason-lspconfig.nvim" },
    { src = "https://github.com/mikavilpas/yazi.nvim"},
    { src = "https://github.com/folke/which-key.nvim"},
    { src = "https://github.com/lewis6991/gitsigns.nvim"},
    { src = "https://github.com/windwp/nvim-autopairs"},
    { src = "https://github.com/windwp/nvim-ts-autotag" },
    { src = "https://github.com/saghen/blink.lib"}, 
    { src = "https://github.com/Saghen/blink.cmp", version = vim.version.range("1.*")},
})

-- set up the theme
vim.cmd("colorscheme everforest")


-- Yazi.nvim set up
require("yazi").setup({
  open_for_directories = true, -- this is the key option
})

-- Which-key set up
require("which-key").setup({
    preset = "helix",
    win = {
        border = "rounded",
    },
})

-- Git set up
require('gitsigns').setup {}

-- Import everything else from /plugins
require("plugins.treesitter")
require("plugins.telescope")
require("plugins.lsp")
require("plugins.autopair")
require("plugins.blink")
require("plugins.lsp")
require("plugins.auto-tag")

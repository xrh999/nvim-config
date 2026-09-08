-- treesitter set up
-- here's the supported languages
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/main/SUPPORTED_LANGUAGES.md
require('nvim-treesitter').setup {
    -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
    install_dir = vim.fn.stdpath('data') .. '/site'
}

local languages = {
    'python',
    'javascript',
    'typescript',
    'tsx',
    'jsx',
    'cpp',
    'lua',
    'json',
    'bash',
    'html',
    'css',
    'markdown',
}
require('nvim-treesitter').install (languages):wait(300000)

vim.api.nvim_create_autocmd('FileType', {
    pattern = {
        'python',
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
        'cpp',
        'lua',
        'json',
        'bash',
        'html',
        'css',
        'markdown',
    },
    callback = function()
        vim.treesitter.start()
    end,
})

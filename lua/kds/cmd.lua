-- Automatically fixes .ts, .tsx, .js files on buffer write using eslint
vim.cmd([[
  augroup eslint_autocmds
    autocmd!
    autocmd BufWritePost * :silent! :EslintFixAll
  augroup END
]])

-- Automatically formats .go files on buffer write using gofmt
vim.cmd([[
  augroup gofmt_autocmd
    autocmd!
    autocmd BufWritePost *.go :silent! :!go fmt %
  augroup END
 ]])

-- Automatically fixes .php files on buffer write using phpcodestyle
vim.cmd([[
  augroup phpcodestyle_autocmd
    autocmd!
    autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()
  augroup END
]])

-- Automatically formats .py files on buffer write using Black
vim.cmd([[
  augroup black_autocmd
    autocmd!
    autocmd BufWritePost *.py :silent! :!black %
  augroup END
]])

-- Automatically formats .lua files on buffer write using lua-format
vim.cmd([[
  augroup luaformat_autocmd
    autocmd!
    autocmd BufWritePost *.lua :silent! :!lua-format -i %
  augroup END
]])

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- scrollbar.nvim plugin provides only two lua functions, show and clear. The following config is recommended.
vim.cmd([[
augroup ScrollbarInit
  autocmd!
  autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end
    ]])

-- https://github.com/ray-x/go.nvim
local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function() require('go.format').goimport() end,
    group = format_sync_grp
})

local format_sync_import = vim.api.nvim_create_augroup("GoImport", {})
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function() require('go.format').goimport() end,
    group = format_sync_import
})

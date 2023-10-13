-- Automatically fixes .ts, .tsx, .js files on buffer write using eslint
vim.cmd([[
  augroup eslint_autocmds
    autocmd!
    autocmd BufWrite * :silent! :EslintFixAll
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
    autocmd BufWrite *.php silent! call PhpCsFixerFixFile()
  augroup END
]])

-- Automatically formats .py files on buffer write using Black
vim.cmd([[
  augroup black_autocmd
    autocmd!
    autocmd BufWrite *.py :silent! :!black %
  augroup END
]])

-- Automatically formats .lua files on buffer write using lua-format
vim.cmd([[
  augroup luaformat_autocmd
    autocmd!
    autocmd BufWrite *.lua :silent! :!lua-format -i %
  augroup END
]])

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

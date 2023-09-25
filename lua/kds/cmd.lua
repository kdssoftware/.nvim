-- Automatically fixes .ts, .tsx, .js files on buffer write using eslint
vim.cmd([[
  augroup eslint_autocmds
    autocmd!
    autocmd BufWrite * :silent! :EslintFixAll
  augroup END
]])


vim.cmd([[
  augroup gofmt_autocmd
    autocmd!
    autocmd BufWrite *.go :silent! :!go fmt %
  augroup END
]])

vim.cmd([[
  augroup phpcodestyle_autocmd
    autocmd!
    autocmd BufWrite *.php silent! call PhpCsFixerFixFile()
  augroup END
]])


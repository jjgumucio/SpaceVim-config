" Use Prettier instead of beautify along ESLint
function! bootstrap#after() abort
  let g:neoformat_javascript_eslint_maker =  {
        \ 'exe': 'npx',
        \ 'args': ['--quiet', 'eslint', '--format=compact'],
        \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
        \   '%W%f: line %l\, col %c\, Warning - %m,%-G,%-G%*\d problems%#',
        \ 'cwd': '%:p:h',
        \ 'output_stream': 'stdout',
        \ }

  let g:neoformat_javascript_jsx_enabled_makers = ['prettier']

  let g:neoformat_enabled_javascript = ['npxprettier']


  let g:neoformat_typescript_tsx_enabled_makers = ['prettier']

  let g:neoformat_typescript_prettier = {
      \ 'exe': 'prettier',
      \ 'args': ['--stdin', '--stdin-filepath', '"%:p"', '--parser', 'typescript'],
      \ 'stdin': 1
      \ }
  let g:neoformat_enabled_typescript = ['tsfmt', 'prettier', 'eslint']

  let g:neoformat_typescriptreact_prettier = {
      \ 'exe': 'prettier',
    \ 'args': ['--stdin', '--stdin-filepath', '"%:p"', '--parser', 'typescriptreact'],
    \ 'stdin': 1
    \ }
  let g:neoformat_enabled_typescriptreact = ['tsfmt', 'prettier', 'eslint']
endfunction

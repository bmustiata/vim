
function! MarkdownEnableSyntaxRanges()
" source block syntax highlighting
if exists('g:loaded_SyntaxRange')
  for lang in ['c', 'python', 'vim', 'javascript', 'cucumber', 'xml', 'typescript', 'sh', 'java', 'cpp', 'sh', 'php', 'yaml', 'css']
    call SyntaxRange#Include(
          \  '^```' . lang . '$'
          \, '^```$'
          \, lang, 'NonText')
  endfor

  " exception for gherkin, since the syntax file is named cucumber
  call SyntaxRange#Include(
        \  '^```gherkin$'
        \, '^```$'
        \, 'cucumber', 'NonText')
endif
endfunction

call MarkdownEnableSyntaxRanges()


function! MarkdownEnableSyntaxRanges()
" source block syntax highlighting
if exists('g:loaded_SyntaxRange')
  for lang in ['c', 'python', 'vim', 'javascript', 'cucumber', 'xml', 'typescript', 'sh', 'java', 'cpp', 'sh', 'php', 'yaml', 'css', 'html']
    call SyntaxRange#Include(
          \  '^```' . lang . '$'
          \, '^```$'
          \, lang, 'NonText')
  endfor

  " exception for text, since the syntax file is named nosyntax
  call SyntaxRange#Include(
        \  '^```text$'
        \, '^```$'
        \, 'plaintext', 'NonText')

  call SyntaxRange#Include(
        \  '^```$'
        \, '^```$'
        \, 'plaintext', 'NonText')

  " exception for gherkin, since the syntax file is named cucumber
  call SyntaxRange#Include(
        \  '^```gherkin$'
        \, '^```$'
        \, 'cucumber', 'NonText')
endif
endfunction

call MarkdownEnableSyntaxRanges()

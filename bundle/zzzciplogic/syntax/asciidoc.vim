

function! AsciidocEnableSyntaxRanges()
" source block syntax highlighting
if exists('g:loaded_SyntaxRange')
  for lang in ['c', 'python', 'vim', 'javascript', 'cucumber', 'xml', 'typescript', 'sh', 'java', 'cpp', 'sh', 'text', 'php', 'yaml', 'css']
    call SyntaxRange#Include(
          \  '\c\[source\s*,\s*' . lang . '.*\]\s*\n[=-]\{4,\}\n'
          \, '\]\@<!\n[=-]\{4,\}\n'
          \, lang, 'NonText')
  endfor

  call SyntaxRange#Include(
        \  '\c\[source\s*,\s*gherkin.*\]\s*\n[=-]\{4,\}\n'
        \, '\]\@<!\n[=-]\{4,\}\n'
        \, 'cucumber', 'NonText')
endif
endfunction

call AsciidocEnableSyntaxRanges()



function! AsciidocEnableSyntaxRanges()
" source block syntax highlighting
if exists('g:loaded_SyntaxRange')
  for lang in ['c', 'python', 'vim', 'javascript', 'cucumber', 'xml', 'typescript', 'sh', 'java', 'cpp', 'php', 'yaml', 'css', 'html']
    call SyntaxRange#Include(
          \  '\c\[source\s*,\s*' . lang . '\s*\]\s*\n[=-]\{4,\}\n'
          \, '\]\@<!\n[=-]\{4,\}\n'
          \, lang, 'NonText')
  endfor

  call SyntaxRange#Include(
        \  '\c\[source\s*,\s*gherkin.*\]\s*\n[=-]\{4,\}\n'
        \, '\]\@<!\n[=-]\{4,\}\n'
        \, 'cucumber', 'NonText')

  call SyntaxRange#Include(
        \  '\c\[source\s*,\s*text.*\]\s*\n[=-]\{4,\}\n'
        \, '\]\@<!\n[=-]\{4,\}\n'
        \, 'plaintext', 'NonText')
endif
endfunction

call AsciidocEnableSyntaxRanges()


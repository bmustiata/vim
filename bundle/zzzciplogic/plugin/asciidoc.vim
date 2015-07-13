
function! AsciidocEnableSyntaxRanges()
" source block syntax highlighting
if exists('g:loaded_SyntaxRange')
  for lang in ['c', 'python', 'vim', 'javascript', 'cucumber', 'xml']
    call SyntaxRange#Include(
          \  '^```' . lang . '$'
          \, '^```$'
          \, lang, 'NonText')
  endfor
endif
endfunction

command AsciidocEnableSyntaxRanges call AsciidocEnableSyntaxRanges()

au BufRead,BufNewFile *.adoc AsciidocEnableSyntaxRanges
au BufRead,BufNewFile *.md AsciidocEnableSyntaxRanges
au BufRead,BufNewFile *.markdown AsciidocEnableSyntaxRanges


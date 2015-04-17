" nerdtree color fix
hi Directory guifg=#aaaaff

" returns true iff is NERDTree open/active
function! Ciplogic_isNTOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

function! Ciplogic_ToggleNerdTree()
  if Ciplogic_isNTOpen()
    NERDTreeToggle
  else
    NERDTreeFind
  endif
endfunction

" show/hide the nerdtree
" map <c-n> :NERDTreeToggle<cr>
map <c-n> :call Ciplogic_ToggleNerdTree()<cr>


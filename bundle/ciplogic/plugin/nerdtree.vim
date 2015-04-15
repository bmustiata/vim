" nerdtree color fix
hi Directory guifg=#aaaaff

" returns true iff is NERDTree open/active
function! rc:isNTOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

function! rc:ToggleNerdTree()
  if rc:isNTOpen()
    NERDTreeToggle
  else
    NERDTreeFind
  endif
endfunction

" show/hide the nerdtree
" map <c-n> :NERDTreeToggle<cr>
map <c-n> :call rc:ToggleNerdTree()<cr>


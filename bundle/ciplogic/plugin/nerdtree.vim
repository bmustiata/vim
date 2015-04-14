" show/hide the nerdtree
map <c-n> :NERDTreeToggle<cr>

" nerdtree color fix
hi Directory guifg=#aaaaff

" returns true iff is NERDTree open/active
function! rc:isNTOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" calls NERDTreeFind iff NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
function! rc:syncTree()
  if &modifiable && rc:isNTOpen() && strlen(expand('%')) > 0 && !&diff
    let l:curwinnr = winnr()
    NERDTreeFind
    exec l:curwinnr . "wincmd w"
    " wincmd p
  endif
endfunction

autocmd BufEnter * call rc:syncTree()

:set ts=4
:set sw=4
:set expandtab

" Allow working with tabs as actual tabs:
function! Tabs4()
    setl tabstop=4
    setl noexpandtab
endfunction
command Tabs4 call Tabs4()

function! Tabs8()
    setl tabstop=8
    setl noexpandtab
endfunction
command Tabs8 call Tabs8()

function! Spaces2()
    setl tabstop=2
    setl sw=2
    setl expandtab
endfunction
command Spaces2 call Spaces2()

function! Spaces4()
    setl tabstop=4
    setl sw=4
    setl expandtab
endfunction
command Spaces4 call Spaces4()

function! Spaces8()
    setl tabstop=8
    setl sw=8
    setl expandtab
endfunction
command Spaces8 call Spaces8()


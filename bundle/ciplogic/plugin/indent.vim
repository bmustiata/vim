:set ts=4
:set shiftwidth=4
:set expandtab

" Allow working with tabs as actual tabs:
function! Tabs2()
    set tabstop=2
    set shiftwidth=2
    set noexpandtab
endfunction
command Tabs2 call Tabs2()

function! Tabs4()
    set tabstop=4
    set shiftwidth=4
    set noexpandtab
endfunction
command Tabs4 call Tabs4()

function! Tabs8()
    set tabstop=8
    set shiftwidth=8
    set noexpandtab
endfunction
command Tabs8 call Tabs8()

function! Spaces2()
    set tabstop=2
    set shiftwidth=2
    set expandtab
endfunction
command Spaces2 call Spaces2()

function! Spaces4()
    set tabstop=4
    set shiftwidth=4
    set expandtab
endfunction
command Spaces4 call Spaces4()

function! Spaces8()
    set tabstop=8
    set shiftwidth=8
    set expandtab
endfunction
command Spaces8 call Spaces8()


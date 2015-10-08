"
" Create a Scrap work layout, in order to 
" develop a task or another
"
function! Scrap()
    edit random-notes  " start with the random-notes, since they will be moved bottom right
    vsplit index.md    " create the documentation index on the left
    split shortcuts    " create the space for the shortcuts 
    resize 10          " make the shortcuts small
    wincmd l           " move to the right window (random-notes)
    split tasks        " create the tasks buffer
    resize 18         " make the tasks 20 lines
endfunction
command Scrap call Scrap()

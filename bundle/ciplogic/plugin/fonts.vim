if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_powerline_fonts=1

if has('gui_running')
    if has('gui_win32')
        set guifont=Consolas:h12
    else
         set guifont=Ubuntu\ Mono\ derivative\ Powerline\ Regular\ 12
    endif
endif

set encoding=utf-8

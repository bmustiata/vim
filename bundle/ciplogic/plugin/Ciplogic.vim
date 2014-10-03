" disable swap files
set noswapfile

:set ts=4
:set sw=4
:set bs=2

:set laststatus=2

" mark the syntax on
:syntax on

" highlight the searches
:set hlsearch

" auto close all the folds when opening a file
:set foldlevel=99

" open a new tab.
:map <c-e> :tabnew<cr>
:imap <c-e> <esc>:tabnew<cr>i

" tab navigation.
:map } :tabnext<cr>
:map { :tabpre<cr>

" close current tab.
:map <c-r>q :tabclose!<cr>
:imap <c-r>q <esc>:tabclose!<cr>

" show/hide the nerdtree
:map <c-n> :NERDTreeToggle %<cr>
":imap <c-n> <esc>:NERDTreeToggle %<cr>

" rename the current tab.
:map <c-r>r :TabooRename 
:imap <c-r>r <esc>:TabooRename 

" hide the line numbers on ctrl+L
:map <c-l> :set invnumber<cr>
:imap <c-l> <esc>:set invnumber<cr>a

" a mustang2 slight variation
:colorscheme ciplogic

" nerdtree color fix
:hi Directory guifg=#aaaaff

" use the system clipboard
:set clipboard=unnamedplus

" automax the current window
:set winheight=999

" Remap the control+arrows to switch between windows.
:nnoremap <silent> <C-Right> <c-w>l
:nnoremap <silent> <C-Left> <c-w>h
:nnoremap <silent> <C-Up> <c-w>k
:nnoremap <silent> <C-Down> <c-w>j

:let g:snippets_dir="~/.vim/bundle/ciplogic/snippets"

" a bit of mappings for UltiSnips
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir="~/.vim/bundle/ciplogic/UltiSnips"


" disable swap files
set noswapfile

:set bs=2

:set laststatus=2

" mark the syntax on
:set nocp
:syntax on
:filetype plugin on
:set number

" highlight the searches
:set hlsearch

" auto close all the folds when opening a file
" and set the fold method as syntax.
:set foldlevel=99
:set foldmethod=syntax

" open a new tab.
:map <c-e> :tabnew<cr>
:imap <c-e> <esc>:tabnew<cr>i

" tab navigation.
:map } :tabnext<cr>
:map { :tabpre<cr>

" close current tab.
:map <c-r>q :tabclose!<cr>
:imap <c-r>q <esc>:tabclose!<cr>

" rename the current tab.
:map <c-r>r :TabooRename 
:imap <c-r>r <esc>:TabooRename 

" hide the line numbers on ctrl+L
:map <c-l> :set invnumber<cr>
:imap <c-l> <esc>:set invnumber<cr>a

" a mustang2 slight variation
:colorscheme ciplogic

" automax the current window
" :set winheight=999

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

"
" splice mappings, since they don't seem to work with localleader
"
map ,g :SpliceGrid<cr>
map ,l :SpliceLoupe<cr>
map ,c :SpliceCompare<cr>
map ,p :SplicePath<cr>

map ,o :SpliceOriginal<cr>
map ,1 :SpliceOne<cr>
map ,2 :SpliceTwo<cr>
map ,r :SpliceResult<cr>

map ,d :SpliceDiff<cr>
map ,D :SpliceDiffoff<cr>
map ,s :SpliceScroll<cr>
map ,n :SpliceNext<cr>
map ,N :SplicePrev<cr>
map ,<space> :SpliceLayout<cr>
map ,u1 :SpliceUse1<cr>
map ,u2 :SpliceUse2<cr>
map ,u :SpliceUse<cr>

map ,q :wa<cr>:qa<cr>
map ,CC :cq<cr>

" set the scrolling and diff by default on splicing
let g:splice_initial_diff_grid=1
let g:splice_initial_diff_compare=1
let splice_initial_diff_path=4

let g:splice_initial_scrollbind_grid=1
let g:splice_initial_scrollbind_loupe=1
let g:splice_initial_scrollbind_compare=1
let g:splice_initial_scrollbind_path=1

"
" Start vim maximized.
"
if has("gui_running")
    " GUI is running or is about to start (maximize window)
    set lines=58 columns=237
endif

" Allow navigating inside wrapped lines
nmap <silent> <Down> gj
nmap <silent> <Up> gk

"
" Show invisible characters.
"
"set listchars=tab:▸\ ,eol:¬
nmap ,l :set list!<CR>

"
" Tail files with Shift-F, similar with less
"
map F :edit!<CR>G
"

"
" json
"
let g:vim_json_syntax_conceal = 0

"
" Use a checkbox for the list
"
map <Space> :TodoToggle<CR>

function! TodoCoolCheckboxes()
    let g:TodoItemChecked = '☒'
    let g:TodoItemUnChecked = '☐'
    let g:TodoShowSquareBrackets = 0
endfunction
command TodoCoolCheckboxes call TodoCoolCheckboxes()

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

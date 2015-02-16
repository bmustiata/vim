" disable swap files
set noswapfile

:set ts=4
:set sw=4
:set bs=2
:set expandtab

:set laststatus=2

" mark the syntax on
:set nocp
:syntax on
:filetype plugin on

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
:map <c-n> :NERDTreeToggle<cr>

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
map ,u :SpliceUse<cr>

map ,q :wa<cr>:qa<cr>
map ,CC :cq<cr>


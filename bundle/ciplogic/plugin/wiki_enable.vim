function! Wiki_Enable()
	let s:wiki_path=substitute(system('pwd'),"\\r*\\n*$","","g")
	let g:vimwiki_list[0].path=s:wiki_path
endfunction


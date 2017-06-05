" Copyright 2017 Michał Kaliński

if !exists('g:lightline_tabpagecount#format')
	let lightline_tabpagecount#format = '(w:%d,b:%d)'
endif


function lightline_tabpagecount#component(n) abort
	let buflist = tabpagebuflist(a:n)
	let wcount = len(buflist)
	let bcount = len(uniq(sort(buflist, 'n'), 'n'))
	return printf(g:lightline_tabpagecount#format, wcount, bcount)
endfunction

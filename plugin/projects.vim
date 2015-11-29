
" https://github.com/bqqbarbhg/dorfbook
function! OpenProjectDorfbook()

	" Set to directory
	NERDTree db | normal cd

	" Uses build.bat
	set makeprg=build.bat

	" Run and test
	command! R !bin\dorfbook.exe
	command! T !test.py

endfunction

function! OpenProject(identifier)
	if a:identifier ==? 'db'
		call OpenProjectDorfbook()
	endif
endfunction

command! -nargs=* OProject call OpenProject( '<args>' )


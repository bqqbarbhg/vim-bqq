
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

" https://github.com/bqqbarbhg/roguos
function! OpenProjectRoguos()

	" Set to directory
	NERDTree ros | normal cd

	" Uses build.bat
	set makeprg=build.bat

	" Run and test
	command! R !qemu-system-i386 -cdrom bin\roguos.iso

endfunction

function! OpenProject(identifier)
	if a:identifier ==? 'db'
		call OpenProjectDorfbook()
	elseif a:identifier ==? 'ros'
		call OpenProjectRoguos()
	endif
endfunction

command! -nargs=* OProject call OpenProject( '<args>' )


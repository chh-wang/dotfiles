" Script Name: 	myself.vim
" Version:     	1.0.0 (global version)
" Last Change: 	2020-09-26
" Author:      	zokoo wang<chh.wang@hotmail.com>
" License:		This file is place in the public domain	
"
" Description: Daily used
"
function! Myfirst()
	echo "Hello first"
endfunction

function! s:My_Rmake()
	!./.build.sh
	cf .err.log
	copen
	silent exe "!rm -rf .err.log"
endfunction

command! -nargs=0 Myfirst call Myfirst()
if !hasmapto('<Plug>MyselfRmake')
	map <unique> ,rmk <Plug>MyselfRmake
endif
noremap <unique> <script> <Plug>MyselfRmake <SID>Rmake
noremap <SID>Rmake :call <SID>My_Rmake()<cr>

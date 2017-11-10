set nocompatible
set number
set mouse=a
set background=dark
syntax on
set autoindent
set cindent
set tabstop=4
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
	exec "!g++ % -o %<"
	exec "! %<"
endfunc

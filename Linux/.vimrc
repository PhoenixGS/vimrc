set nocompatible

set background=dark

set number

set ruler
set magic
set softtabstop=4
set shiftwidth=4
set showmatch
au BufRead,BufNewFile *  setfiletype txt
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>kA
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction
filetype plugin indent on
set completeopt=longest,menu

set tabstop=4        " ÉèÖÃÖÆ±í·û(tabŒü)µÄ¿í¶È
set softtabstop=4     " ÉèÖÃÈíÖÆ±í·ûµÄ¿í¶È  


set nocompatible "²»ÒªvimÄ£·ÂviÄ£Êœ£¬œšÒéÉèÖÃ£¬·ñÔò»áÓÐºÜ¶à²»ŒæÈÝµÄÎÊÌâ
syntax on"Žò¿ªžßÁÁ

set autochdir
set mouse=a
map<F5> : call Compile()<CR>
func! Compile()
	exec "w"
	exec "!g++ % -o %< -O2 -g"
endfunc

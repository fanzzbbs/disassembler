
set nocompatible
set nu
set nobackup
colorscheme evening

set autoindent
set cindent

"统统使用utf-8编码
set fenc=utf-8

function Fpy_setting()
	set fencs=utf-8
	set tabstop=4
	set softtabstop=4
	set expandtab
endfunction
function Fother_setting()
	set fencs=gb2312,utf-8,gbk,gb18030,big5,ucs-bom
	set tabstop=4
	set softtabstop=4
	set noexpandtab
endfunction

call Fother_setting()
au BufNewFile,BufRead *.py call Fpy_setting()

set list
set listchars=tab:>_,trail:.

syntax on
nnoremap <silent> <F7> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow=1
" 高亮行尾的空格
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/


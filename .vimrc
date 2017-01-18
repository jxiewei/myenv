syntax on
set shiftwidth=4 tabstop=4 expandtab
set cindent
set hlsearch
set ic
set dictionary=/usr/share/dict/words
colorscheme koehler

set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix
set encoding=prc
set cscopetag

"map autotags plugin keys
nmap <C-\>u :call AutotagsUpdate()<CR>
nmap <C-\>a :call AutotagsAdd()<CR>
let g:autotags_cscope_file_extensions = ".cpp .cc .cxx .m .hpp .hh .h .hxx .c .idl .java .go .cs"

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

let g:bookmark_sign = '>>'
let g:bookmark_annotation_sign = '##'
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
"let g:bookmark_auto_save_file = $HOME .'/.vim-bookmarks'
let g:bookmark_highlight_lines = 0

command! -nargs=+ MyGrep execute 'silent lvimgrep! <args>' | lopen 20
command! -nargs=+ MyGrepAdd execute 'silent lvimgrepadd! <args>' | lopen 20

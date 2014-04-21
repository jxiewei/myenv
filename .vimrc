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

if exists("$PROJECT") && filereadable(glob("~/.".$PROJECT.".vimrc"))
    so ~/.$PROJECT.vimrc
endif

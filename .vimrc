" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" BundleInstall

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:

Bundle 'Align'
Bundle 'tpope/vim-rails'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdtree'

" Bundle 'kchmck/vim-coffee-script' 这些我貌似用不到暂时
" Bundle 'hallison/vim-markdown'
" Bundle 'groenewege/vim-less'
" Bundle 'bbommarito/vim-slim'
Bundle 'kien/ctrlp.vim'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'

" what I use
Bundle 'mileszs/ack.vim'

Bundle 'corntrace/bufexplorer'
Bundle 'tomtom/tcomment_vim'
Bundle 'mattn/zencoding-vim'
Bundle 'Lokaltog/vim-powerline'
" colorschemes
Bundle 'flazz/vim-colorschemes'

"for javascript
Bundle "pangloss/vim-javascript"
" 字体
set guifont=monaco\ 10

set nobackup
set nowritebackup

"语法高亮
syntax on

"打开命令行补全菜单
set wildmenu
"关闭响铃，闪屏
set vb t_vb=
"显示行号
set nu
"马上跳到搜索匹配
set incsearch

"根据文件格式载入插件和缩进
filetype plugin indent on
set autoindent

"打开鼠标功能
set mouse=a

"指标符宽度
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Display extra whitespace
set list listchars=tab:»·,trail:·

autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab
autocmd FileType eruby  set tabstop=2 shiftwidth=2
autocmd FileType ruby,rdoc set tabstop=2 shiftwidth=2
autocmd FileType html set tabstop=2 shiftwidth=2
autocmd FileType javascript set tabstop=2 shiftwidth=2
autocmd FileType coffee set tabstop=2 shiftwidth=2
au! BufRead,BufNewFile *.json setfiletype json

fun! StripTrailingWhitespace()
    " Don't strip on these filetypes
    if &ft =~ 'markdown'
        return
    endif
    %s/\s\+$//e
endfun

autocmd BufWritePre * call StripTrailingWhitespace()

" 快捷键
nmap <Up> <c-w>k
nmap <Down> <c-w>j
nmap <Right> <c-w>l
nmap <Left> <c-w>h

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

nmap <F2> :w<cr>
nmap <F3> :wa<cr>
nmap <F4> :q<cr>
nmap <F6> :cp<cr>
nmap <F7> :cn<cr>
nmap <F11> gg=G<C-o>

color bclear

set hlsearch

set winminheight=0      " Allow windows to get fully squashed
set winminwidth=0      " Allow windows to get fully squashed

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
let g:Powerline_symbols = 'fancy'
" map <C-H> <C-W>h<C-W>\|
" map <C-L> <C-W>l<C-W>\|

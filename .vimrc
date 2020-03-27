" 加载管理插件
set rtp+=~/.vim/bundle/Vundle.vim
" 倒入插件文件
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" vim配置文档
set nu
syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set autoread
set hls
set foldenable
set showmatch
set autoindent
set autoindent
set tabstop=4
set completeopt=longest,menu
set encoding=utf-8
set ts=4

" 设置主题
set background=dark
colorscheme molokai
"colorscheme solarized
set t_Co=256

"java config 配置java自动补全
setlocal omnifunc=javacomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete
"自动补全
autocmd FileType java set completefunc=javacomplete#CompleteParamsInf
""参数提醒
inoremap <buffer><C-X><C-U> <C-X><C-U><C-P>
inoremap <buffer><C-S-Space> <C-X><C-U><C-P>

autocmd FileType java,javascript,jsp inoremap <buffer>. .<C-X><C-O><C-P>
""Ctrl+X Ctrl+U 提示功能

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
let g:SimpylFold_docstring_preview=1
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h
" match BadWhitespace /\s\+$/
" 修复空格
map <leader><space> :FixWhitespace<cr>
" au BufNewFile,BufRead *.py
"						\ set tabstop=4
"						\ set softtabstop=4
"						\ set shiftwidth=4
"						\ set textwidth=79
"						\ set expandtab
"						\ set autoindent
"						\ set fileformat=unix

call togglebg#map("<F5>")

"Django
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4
"YCM
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string"
"Umtlsnips
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file"

" NerdTree才插件的配置信息
"将F2设置为开关NERDTree的快捷键
 map <f2> :NERDTreeToggle<cr>
"修改树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
"窗口位置
let g:NERDTreeWinPos='left'
"窗口尺寸
let g:NERDTreeSize=30
"窗口是否显示行号
let g:NERDTreeShowLineNumbers=1
"不显示隐藏文件
let g:NERDTreeHidden=0

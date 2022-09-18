set nocompatible " 关闭 vi 兼容模式
syntax enable " 自动语法高亮
colorscheme darkblue " 设定配色方案
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
"colorscheme desert
"set background=light
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
"let g:molokai_original = 1
"colorscheme molokai
set number " 显示行号
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set nobackup " 覆盖文件时不备份
set autochdir " 自动切换当前目录为当前文件所在的目录
filetype plugin indent on " 开启插件
set backupcopy=yes " 设置备份时的行为为覆盖
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan " 禁止在搜索到文件两端时重新搜索
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码
" set showmatch " 插入括号时，短暂地跳转到匹配的对应括号
" set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set guioptions-=T " 隐藏工具栏
set guioptions-=m " 隐藏菜单栏
set smartindent " 开启新行时使用智能自动缩进
set backspace=indent,eol,start
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
" 设置在状态行显示的信息
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为
" set foldclose=all " 设置为自动关闭折叠 
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>


"窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动
"光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>,切换的
"时候会变得非常方便.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set ts=4
set expandtab
set textwidth=80
set autoindent

" set fileformats=unix,dos,mac
" nmap <leader>fd :se fileformat=dos<CR>
" nmap <leader>fu :se fileformat=unix<CR>


au BufNewFile,BufRead *.py
            \ set tabstop=4   "tab宽度
            \ set softtabstop=4
            \ set shiftwidth=4  
            \ set textwidth=79  "行最大宽度
            \ set expandtab       "tab替换为空格键
            \ set autoindent      "自动缩进
            \ set fileformat=unix   "保存文件格式

"-----------------------------------------------------------------
" plugin - taglist.vim 查看函数列表，需要ctags程序
" F4 打开隐藏taglist窗口
"-----------------------------------------------------------------
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
nnoremap <silent><F4> :TlistToggle<CR>
let Tlist_Show_One_File = 1 " 不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1 " 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1 " 在右侧窗口中显示taglist窗口
let Tlist_File_Fold_Auto_Close=1 " 自动折叠当前非编辑文件的方法列表
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Process_File_Always = 1
let Tlist_Display_Prototype = 0
let Tlist_Compact_Format = 1
let Tlist_WinWidth = 50

let g:winManagerWindowLayout='FileExplorer|BufExplorer'
nmap wm :WMToggle<cr>
nmap wt :TlistToggle<cr>


let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

nmap <C-]>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-]>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-]>d :cs find d <C-R>=expand("<cword>")<CR><CR>

let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplMaxSize = 10
let g:winManagerWidth = 50 
nnoremap <silent> <F3> :Grep<CR>
filetype plugin indent on
set completeopt=longest,menu


if has("cscope")
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
" add any database in current directory
if filereadable("cscope.out")
cs add cscope.out
"else add database pointed to by environment
elseif $CSCOPE_DB != ""
cs add $CSCOPE_DB
endif
set csverb
set cscopetag
set cscopequickfix=s-,g-,d-,t-,e-,f-,i-
endif

set nocompatible              " be iMproved, required
filetype on                  " required

"add for p4 language
"
augroup filetypedetect
  au BufRead,BufNewFile *.p4 set filetype=c
    " associate *.p4 with c filetype
  au BufRead,BufNewFile *.go set filetype=go
augroup END


let g:acp_behaviorKeywordLength = 1  
let g:AutoComplPop_MappingDriven = 1

let g:clang_complete_copen=1
let g:clang_periodic_quickfix=1
let g:clang_snippets=1
let g:clang_close_preview=1
let g:clang_use_library=1
let g:clang_user_options='-stdlib=libc++ -std=c++11 -IIncludePath'

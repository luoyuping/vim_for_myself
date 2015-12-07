"writen by luoyuping  
"you can touch me on mail:1209539480@qq.com



let mapleader=";"


"==================
" 全局配置
" 文件类型侦测 " 开启文件类型侦测 filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on


" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 开启语法高亮功能
syntax enable

" 补充
set wrap
"set rnu
"===================
" vim 自身（非插件）快捷键
" 定义快捷键到行首和行尾
nnoremap <c-a> ^
nnoremap <c-e> $
"支持粘贴系统剪贴板的内容
" 设置快捷键将选中文本块复制至系统剪贴板
nnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至vim
nnoremap <Leader>p "+p

" 定义快捷键关闭当前分割窗口
nnoremap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nnoremap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nnoremap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nnoremap <Leader>Q :qa!<CR>

" 设置快捷键遍历子窗口
" 依次遍历
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j

"nmap <Leader>nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至方的窗口
nnoremap <Leader>hw <C-W>h
"跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
 "定义快捷键在结对符之间跳转，助记 pair
nnoremap <Leader>pa %


" 保存快捷键
"noremap <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
"noremap <leader>ss :mksession! my.vim<cr>

" 恢复快捷键
"noremap <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>
"noremap <leader>rs :source my.vim<cr>

"insert mode shortcut
" alt + H 光标移当前行行首
inoremap <m-h> <ESC>I
" alt + J 光标移下一行行首
inoremap <m-j> <ESC><Down>I
" alt + K 光标移上一行行尾
inoremap <m-k> <ESC><Up>A
" alt + L 光标移当前行行尾
inoremap <m-l> <ESC>A

" ctrl + H 光标左移一格
inoremap <c-h> <Left>
" ctrl + J 光标下移一格
inoremap <c-j> <Down>
" ctrl + K 光标上移一格
inoremap <c-k> <Up>
" ctrl + L 光标右移一格
inoremap <c-l> <Right>

inoremap <leader>jk  <esc>   
" 其他
" 开启实时搜索功能
set incsearch

" 搜索时大小写不敏感
set ignorecase

" 关闭兼容模式
set nocompatible

" vim 自身命令行模式智能补全
set wildmenu


" 插件管理
" 将 pathogen 自身也置于独立目录中，需指定其路径
runtime bundle/vim-pathogen/autoload/pathogen.vim
" 运行 pathogen
execute pathogen#infect()


" 插入模式下将光标处的单词转换成大写字母
inoremap <leader>tu <esc>gUwi

"=======================
" vim colorscheme setting
" {{{
set background=dark
"set background=light

"colorscheme cpp_light
"colorscheme github
"colorscheme grb256
"colorscheme kolor
"colorscheme solarized
colorscheme molokai
"colorscheme phd
"colorscheme fruity
"colorscheme ir_black
"colorscheme peaksea
"colorscheme rastafari
"}}}
 


"vim statusline setting
" 总是显示状态栏
"{{{
set laststatus=2
set statusline=%l    " 当前行号
set statusline+=/    " 分隔符
set statusline+=%L   " 总行数

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
"}}}

"vim cursor setting
"{{{
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 显示光标当前位置
set ruler
"}}}



" 开启行号显示
set number

" 高亮显示当前行/列
set cursorline
set cursorcolumn

" 高亮显示搜索结果
set hlsearch incsearch 

" 禁止折行
set nowrap

"==================
" 代码折叠

" 基于缩进或语法进行代码折叠
"za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠
set foldmethod=indent
"set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable



"===================== Plugin Indent Guides 
"Indent
" 缩进

" 自适应不同语言的智能缩进
filetype indent on

" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 缩进可视化插件 Indent Guides
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nnoremap <silent> <Leader>i <Plug>IndentGuidesToggle






"=========================下面是插件相关的配置






"============================ Plugin vim-fswitch 
" 接口与实现快速切换

" *.cpp 和 *.h 间切换
nnoremap <Leader>mh :A<CR>
" 子窗口中显示 *.cpp 或 *.h
nnoremap <Leader>ms :AS<CR>
"===========================Plugin vim-powerline 



"========================= Plugin vim-signature 
" 代码收藏
" 自定义 vim-signature 快捷键
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }


"=================================== Plugin indexer && dfrank_util && vimprj
" 代码导航
" 基于标签的跳转 

" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+l+p+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

" 正向遍历同名标签
nnoremap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nnoremap <Leader>tp :tprevious<CR>



"===================================== Plugin tagbar
" 标签列表
" 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_left=1
" 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list
nnoremap <Leader>tl :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
" 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_cpp = {
     \ 'ctagstype' : 'c++',
     \ 'kinds'     : [
         \ 'd:macros:1',
         \ 'g:enums',
         \ 't:typedefs:0:0',
         \ 'e:enumerators:0:0',
         \ 'n:namespaces',
         \ 'c:classes',
         \ 's:structs',
         \ 'u:unions',
         \ 'f:functions',
         \ 'm:members:0:0',
         \ 'v:global:0:0',
         \ 'x:external:0:0',
         \ 'l:local:0:0'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }



"======================== Plugin ctrlsf 
" 查找
" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in project
nnoremap <Leader>sp :CtrlSF<CR>


"=================
" 替换
" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>



"============================= Plugin UltiSnips 
" 模板补全
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsSnippetDirectories=["../mysnippets"]
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"


"============================== Plugin YcmCompleteMe
" YCM 补全

set tags+=/usr/include/c++/4.8.2/stdcpp.tags
"" YCM 补全菜单配色
"" 补全内容不以分割子窗口形式现，只显示补全列表
"set completeopt-=preview


"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
"" 选中项
"highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

"" 补全功能在注释中同样有效
"let g:ycm_complete_in_comments=1

"" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
"let g:ycm_confirm_extra_conf=0

"" 开启 YCM 标签补全引擎
"let g:ycm_collect_identifiers_from_tags_files=1
"" 引入 C++ 标准库 tags

"" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
"inoremap <leader>; <C-x><C-o>


"" 从第一个键入字符就开始罗列匹配项
"let g:ycm_min_num_of_chars_for_completion=2

"" 禁止缓存匹配项，每次都重新生成匹配项
"let g:ycm_cache_omnifunc=0

"" 语法关键字补全
"let g:ycm_seed_identifiers_with_syntax=1

""打开可以查看所有错误码的特性
"":lopen 查看所有的错误，:lclose 关闭错误栏
"let g:ycm_always_populate_location_list =1

"" 基于语义的代码航
"nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
"" 只能是 #include 或已打开的文件
"nnoremap <leader>je :YcmCompleter GoToDefinition<CR>

"============================= Plugin syntastic 
" 静态分析器 syntastic 错误标识
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'


"============================ Plugin vim-protodef && Plugin vim-fswitch
" 由接口快速生成实现框架
" 设置 pullproto.pl 脚本路径
let g:protodefprotogetter='~/.vim/bundle/vim-protodef/pullproto.pl'
" 成员函数的实现顺序与声明顺序一致
let g:disable_protodef_sorting=1



"========================== 调用系统自带的man
" 库信息参考
" 启用:Man命令查看各类man信息
source $VIMRUNTIME/ftplugin/man.vim
" 定义:Man命令查看各类man信息的快捷键
nnoremap <Leader>man :Man 3 <cword><CR>




"======================== Plugin NERDTree 
" 工程文件浏览
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
"nmap <Leader>fl :NERDTreeToggle<CR>

nnoremap <F3> :NERDTreeToggle<CR>

" 设置 NERDTree 子窗口宽度
let NERDTreeWinSize=22
" 设置 NERDTree 子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1


"======================== Plugin MiniBufExplorer 
" 多文档编辑
" 显示/隐藏 MiniBufExplorer 窗口
"map <Leader>bl :MBEToggle<cr>
noremap <F2> :MBEToggle<cr>
" buffer 切换快捷键
noremap <C-Tab> :MBEbn<cr>
noremap <C-S-Tab> :MBEbp<cr>



"===========================
" 环境恢复
" 设置环境保存项
"set sessionoptions="blank,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"

" 保存 undo 历史
"set undofile

"================================ Plugin wildfire 
" 快速选中结对符内的文本
" 快捷键
noremap <SPACE> <Plug>(wildfire-fuel)
vnoremap <S-SPACE> <Plug>(wildfire-water)

" 适用于哪些结对符
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]




"========================== Plugin gundo 
" 调用 gundo 树
nnoremap <Leader>ud :GundoToggle<CR>

"========================== goyo.vim 


"========================= Plugin easymotion 
"快速移动的插件 



"========================= Plugin nerdcommerter
" 快速注释开关的插件 


"========================  Plugin vim-markdown
let g:vim_markdown_folding_disabled=1 "禁止折叠
let g:vim_markdown_no_default_key_mappings=1 "禁用默认的键位映射
" 语法拓展
let g:vim_markdown_math=1 
let g:vim_markdown_frontmatter=1

"=============================== 
" 设置快捷键实现一键编译及运行
"nnoremap <Leader>m :wa<CR> :cd build/<CR> :!rm -rf main<CR> :!cmake CMakeLists.txt<CR>:make<CR><CR> :cw<CR> :cd ..<CR>
"nnoremap <Leader>g :wa<CR>:cd build/<CR>:!rm -rf main<CR>:!cmake CMakeLists.txt<CR>:make<CR><CR>:cw<CR>:cd ..<CR>:!build/main<CR>

"==========================
" web 前端
" surrond 添加 <p> 元素的快捷键
"nnoremap <Leader>ap yss<p><CR>
" 对 HTML 元素进行转义：< -> &lt;、> -> &gt;、& -> &amp;、空格 -> &nbsp;、行尾添加 <br />
" 先后顺序敏感
"function HtmlEscape()
    "retab<CR>
    "silent s/&/\&amp;/eg
    "silent s/</\&lt;/eg
    "silent s/>/\&gt;/eg
    "silent s/ /\&nbsp;/eg
    "silent s/$/<br \/>/eg
"endfunction


" 自定义的功能 快捷键
" ==========================
autocmd BufNewfile *.txt :write
"autocmd BufNewfile *.c :write
    "//coryright bu luyuping
    "// contract with me on luohan1124@mailc.oom
autocmd BufWritePre,BufRead *.html :normal gg=G

"特技:在插入模式下，将系统粘贴板上的内容粘贴到系统上
inoremap  <c-v> <c-r>*



" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
"         " }}}




"gvim specail setting 
"{{{

function Mygvim()
    " 禁止显示滚动条
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R

    " 禁止显示菜单和工具条
    "set guioptions-=m
    "set guioptions-=T
    "Toggle Menu and Toolbar
    set guioptions+=m
    set guioptions+=T
    map <silent> <F5> :if &guioptions =~# 'T' <Bar>
            \set guioptions-=T <Bar>
            \set guioptions-=m <bar>
            \else <Bar>
            \set guioptions+=T <Bar>
            \set guioptions+=m <Bar>
            \endif<CR>

    " 设置 gvim 显示字体
    "set guifont=YaHei\ Consolas\ Hybrid\ 11.5
    "colorscheme molokai
    colorscheme github 
endfunction


if has("gui_running")
    call Mygvim()
endif 
"}}}

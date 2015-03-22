set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
autocmd bufwritepost _vimrc source%
"侦测文件类型
filetype on
"载入文件类型插件
filetype plugin on
"语法高亮打开，关键字上色
syntax on
call pathogen#infect()
"允许使用indent目录下的文件类型缩进

set fileencodings=utf-8,ucs-bom,cp936,gbk,gb2312,big5,latin1
"autocmd GUIEnter * simalt ~x

"set guifont=Consolas\:h14,Courier\ New\:h14,Courier\:h14
set nu
set cursorline
set cursorcolumn
set guifont=Monaco\:h14
set guioptions-=T
"set guioptions-=m
set guioptions-=L
set guioptions-=r
"启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI
"不让vim发出讨厌的滴滴声
set noerrorbells

"高亮显示匹配的括号
set showmatch
runtime macros/matchit.vim 
"设置透明度
set transparency=30
"自动补全括号，包括大括号
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" 用空格键来开关折叠
":inoremap ( ()<ESC>i
":inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {}<ESC>i
":inoremap } <c-r>=ClosePair('}')<CR>
":inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap < <><ESC>i
":inoremap > <c-r>=ClosePair('>')<CR>


"使用菜单式匹配列表进行自动补全
set wildmenu
let g:NeoComplCache_EnableAtStartup = 1
let g:NeoComplCache_SmartCase = 1
let g:NeoComplCache_TagsAutoUpdate = 1
let g:NeoComplCache_EnableInfo = 1
let g:NeoComplCache_EnableCamelCaseCompletion = 1
let g:NeoComplCache_MinSyntaxLength = 3
let g:NeoComplCache_EnableSkipCompletion = 1
let g:NeoComplCache_SkipInputTime = '0.5'
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css,less set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complet

"""""""""" 英文拼写检查 """""""""""
" 拼写错误被画红线，比缺省设置更美观 "
""""""""""""""""""""""""""""""""""
"set spell spelllang=en_us
"setlocal spell spelllang=en_us
"highlight clear SpellBad
"highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
"highlight clear SpellCap
"highlight SpellCap term=underline cterm=underline
"highlight clear SpellRare
"highlight SpellRare term=underline cterm=underline
"highlight clear SpellLocal
"highlight SpellLocal term=underline cterm=underline

set fdm=indent
set smartindent
set sm!
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
colors koehler

let $VIMDATA = $VIMFILES.'/vimdata'
"set backupdir=$VIMDATA/backup
"set directory=$VIMDATA/temp
set nobackup
set noswapfile

"自动补全
set completeopt=longest,menu

"Jquery代码提示
"开启折叠
let b:javascript_fold=1
"启用对dom html css高亮支持
let javascript_enable_domhtmlcss=1

"emmet 配置

let g:user_emmet_settings = {
\  'indentation' : '  ',
\  'perl' : {
\    'aliases' : {
\      'req' : 'require '
\    },
\    'snippets' : {
\      'use' : "use strict\nuse warnings\n\n",
\      'warn' : "warn \"|\";",
\    }
\  }
\}

let g:user_emmet_expandabbr_key = '<c-e>'

let g:use_emmet_complete_tag = 1

"vim authorinfo

"let g:loaded_authorinfo= 1
"let g:vimrc_author='zhouhuan'
"let g:vimrc_email='zhouhuan@hundsun.com'
"let g:vimrc_homepage='none' 
"nmap <F10> :AuthorInfoDetect<cr>

"开启CSS3语法支持
au BufRead,BufNewFile *.css set ft=css syntax=css3
au BufRead,BufNewFile *.js set ft=javascript syntax=javascript
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.vm,*.html,*.htm,*.shtml,*.stm set ft=velocity
"NERDTree plugin
  autocmd vimenter * NERDTree
  nmap <F3> :NERDTree<CR>    
  let NERDTreeWinPos = "left"
  let NERDTreeWinSize = 30
  " 强制+ 表示 目录防止目录乱码
  let NERDTreeDirArrows = 0 


"Tag list (ctags)
 " autocmd vimenter * Tlist
  let Tlist_Auto_Open=1 
  let Tlist_Exit_OnlyWindow = 1
  "如果taglist窗口是最后一个窗口，则退出vim
  let Tlist_Use_Right_Window = 1
  let Tlist_JS_Settings = 'javascript;s:string;a:array;o:object;f:function;m:member'
  let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'

"powerline
 " set guifont=PowerlineSymbols\ for\ Powerline
  set nocompatible
  set t_Co=256
  set laststatus=2
  let g:Powerline_symbols = 'fancy'

"VIMIM中文输入
let g:vimim_toggle_list=1
let g:vimim_ctrl_h_to_toggle=2
let g:vimim_toggle_list='english,wubijd,wubijdloran,wubihf,sogou,wubi,pinyin'
"设置静态输入(空格后才出候选项)
let g:vimim_chinese_input_mode='static'
"双拼设置
":let g:vimim_shuangpin=1
"双拼类型
":let g:vimim_shuangpin='ms'
"设置输入候选项目的数量
let g:vimim_more_candidates=8
let g:vimim_map='c-space'

map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'java' 
        exec "!javac %" 
        exec "!java %<"
    elseif &filetype == 'sh'
        exec "!./%"
    elseif &filetype == 'javascript'
        exec "!node ./%"
    endif
endfunc
" comqueTerm
"
"
"
let g:ConqueTerm_TERM ='xterm'
nmap <Leader>sh :ConqueTerm bash<CR>
nmap <Leader>shs :ConqueTermSplit bash<CR>
nmap <Leader>shv :ConqueTermVSplit bash<CR>
nmap <Leader>sht :ConqueTermTab bash<CR>


set transparency=10

" {{{ Win平台下窗口全屏组件 gvimfullscreen.dll
" Alt + Enter 全屏切换
" Shift + t 降低窗口透明度
" Shift + y 加大窗口透明度
" Shift + r 切换Vim是否总在最前面显示
if has('gui_running') && has('gui_win32') && has('libcall')
    let g:MyVimLib = 'gvimfullscreen.dll'
    function! ToggleFullScreen()
        "let s:IsFullScreen = libcallnr("gvimfullscreen.dll", 'ToggleFullScreen', 0)
        "let s:IsFullScreen = libcallnr("gvimfullscreen.dll", 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
        call libcall(g:MyVimLib, 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
    endfunction

    let g:VimAlpha = 245
    function! SetAlpha(alpha)
        let g:VimAlpha = g:VimAlpha + a:alpha
        if g:VimAlpha < 180
            let g:VimAlpha = 180
        endif
        if g:VimAlpha > 255
            let g:VimAlpha = 255
        endif
        call libcall(g:MyVimLib, 'SetAlpha', g:VimAlpha)
    endfunction

    let g:VimTopMost = 0
    function! SwitchVimTopMostMode()
        if g:VimTopMost == 0
            let g:VimTopMost = 1
        else
            let g:VimTopMost = 0
        endif
        call libcall(g:MyVimLib, 'EnableTopMost', g:VimTopMost)
    endfunction

    "映射 Alt+Enter 切换全屏vim
    map <a-enter> <esc>:call ToggleFullScreen()<cr>
    "切换Vim是否在最前面显示
    nmap <s-r> <esc>:call SwitchVimTopMostMode()<cr>
    "增加Vim窗体的不透明度
    nmap <s--> <esc>:call SetAlpha(10)<cr>
    "增加Vim窗体的透明度
    nmap <s-+> <esc>:call SetAlpha(-10)<cr>
    "Vim启动的时候自动调用InitVim 以去除Vim的白色边框
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'InitVim', 0)
    " 默认设置透明
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'SetAlpha',220)
endif
" }}}

  nnoremap <c-f> :call JsBeautify()<cr>
  autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
  autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
  autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" 配置模版文件
let g:enable_template = 1
let g:template_dir = "~/.vim/templates"

" vim project config
let g:project_enable_welcome = 1
" if you want the NERDTree integration.
let g:project_use_nerdtree = 1
call project#rc("~/workspace/iasp/trunk/Sources/")
Project "iasp-web","web"
call project#rc("~/workspace/iasp/trunk/Sources2/")
Project "ihom2","ihom2"
Project "ihoms2-static","ihoms2-static"
"autocmd InsertLeave * call handlerChange()
"func! handlerChange()
"    
"endfunc
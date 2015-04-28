" VIM 配置文件
" 已使用vundle进行插件维护
" 插件使用主要web前端开发为主
"


set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
autocmd bufwritepost vimrc source %
"侦测文件类型
filetype on
"载入文件类型插件
filetype plugin on
"语法高亮打开，关键字上色
syntax on
"call pathogen#infect()

if has('win32')
	set rtp+=$VIM/vimfiles/bundle/vundle/
	call vundle#rc('$VIM/vimfiles/bundle/')
else
	set rtp+=~/.vim/bundle/vundle/
	call vundle#rc()
endif

"plugins
Bundle 'The-NERD-tree'
Bundle 'tyok/ack.vim'
Bundle 'taglist.vim'
Bundle 'ctrlp.vim'

Bundle 'bling/vim-airline'
Bundle 'Shougo/neocomplcache.vim'
"projects
Bundle 'amiorin/vim-project'
Bundle 'mhinz/vim-startify'
Bundle 'uguu-org/vim-matrix-screensaver'
Bundle 'aquach/vim-http-client'
"move select
Bundle 'terryma/vim-multiple-cursors'
"input method
Bundle 'vimim'
"color 
Bundle 'molokai'
"syntax
Bundle 'Emmet.vim'
Bundle 'html5.vim'
Bundle 'vim-javascript'
Bundle 'coffee.vim'  
Bundle 'kchmck/vim-coffee-script'  
Bundle 'css_color.vim'
Bundle 'lepture/vim-css'
Bundle 'jshint.vim'
Bundle 'jsbeautify'
Bundle 'luishdez/vim-less'

Bundle 'plasticboy/vim-markdown'
Bundle 'lepture/vim-velocity'
Bundle 'chaquotay/ftl-vim-syntax'
Bundle 'mikelue/vim-maven-plugin'
"version
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
Bundle 'sjl/gundo.vim'

"解决中文乱码问题
"set encoding=utf-8
"set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936,gbk,gb2312,big5,latin1
set nu
set cursorline
set cursorcolumn
"set guifont=Monaco\:h12
"set guifont=Consolas\:h12,Courier\ New\:h12,Courier\:h12
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
"启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI
"不让vim发出讨厌的滴滴声
set noerrorbells
"高亮显示匹配的括号
set showmatch
set fdm=indent
set smartindent
set sm!
set cc=75
"允许使用indent目录下的文件类型缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
colors molokai
let $VIMDATA = $VIMFILES.'/vimdata'
"set backupdir=$VIMDATA/backup
"set directory=$VIMDATA/temp
set nobackup
set noswapfile
runtime macros/matchit.vim 
set suffixesadd=.coffee,.js,.less,.css,.html,.ftl
set includeexpr=substitute(v:fname,'^\\/','\\.','g') 
set path=.,/usr/include,./views,./css,./images,./js

"设置透明度
set transparency=5
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
au BufRead,BufNewFile *.coffee set ft=coffee syntax=coffee
au BufNewFile,BufRead *.less set filetype=less syntax=less
au BufNewFile,BufRead *.vm,*.html,*.htm,*.shtml set ft=velocity
au BufNewFile,BufRead *.ftl,*.html set ft=ftl
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

"vim-airline
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline#extensions#disable_rtp_load = 1
let g:airline_extensions = ['branch', 'tabline']
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_section_a=airline#section#create(['mode'])
let g:airline_section_b=airline#section#create(['branch',' ','hunks'])
let g:airline_section_x=airline#section#create(['ffenc'])
let g:airline_section_y=airline#section#create(['','[TYPE:','filetype',']','[TIME:','%{strftime("%H:%M")}',']'])
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = '▶'
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = '◀'
let g:airline#extensions#tabline#right_alt_sep =''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='powerlineish'

"VIMIM中文输入重新配置
let g:vimim_toggle_list=1
let g:vimim_ctrl_h_to_toggle=2
let g:vimim_map='tab_as_onekey'
let g:vimim_toggle_list='english,wubi'
"设置静态输入(空格后才出候选项)
let g:vimim_chinese_input_mode='static'
"双拼设置
":let g:vimim_shuangpin=1
"双拼类型
":let g:vimim_shuangpin='ms'
"设置输入候选项目的数量
let g:vimim_cloud=-1 " 彻底关闭云输入，五笔使用者可选
let g:vimim_more_candidates=8
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
    elseif &filetype == 'js'
        exec "!node ./%"
    endif
endfunc

nnoremap <c-s-f> :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-s-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-s-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-s-f> :call CSSBeautify()<cr>
" 配置模版文件
let g:enable_template = 1
let g:template_dir = "~/.vim/templates"
"gundo.vim
nnoremap <F9> :GundoToggle<CR>
let g:gundo_width = 20
let g:gundo_preview_height = 20
let g:gundo_right = 1
" vim project config
let g:project_enable_welcome = 1
" if you want the NERDTree integration.
let g:project_use_nerdtree = 1
call project#rc("~/workspace/iasp/trunk/Sources/")
Project "iasp-web","web"
call project#rc("~/workspace/iasp/trunk/Sources2/")
Project "ihom2","ihom2"
Project "ihoms2-static","ihoms2-static"
Project "ihoms3-static","ihoms3-static"
call project#rc("~/workspace/iasp/trunk/Sources3/")
Project "iasp3","iasp3"
Project "iasp3-static","iasp3-static"
Project "trustshop","trustshop"
Project "trustshop-static","trustshop-static"
call project#rc("~/workspace/hns/")
Project "hns-server","hns-server"

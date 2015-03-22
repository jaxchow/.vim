" Vim Compiler File
" Compiler:	node
" Maintainer:	jaxchow <jaxchow@gmail.com>
" Last Change:	Mi, 13 Aprk 2005 22:50:07 CEST

if exists("current_compiler")
    finish
endif
let current_compiler = "node"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif


CompilerSet makeprg=node

CompilerSet errorformat=\ %#[%.%#]\ %#%f:%l:%v:%*\\d:%*\\d:\ %t%[%^:]%#:%m,
    \%A\ %#[%.%#]\ %f:%l:\ %m,%-Z\ %#[%.%#]\ %p^,%C\ %#[%.%#]\ %#%m



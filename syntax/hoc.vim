" Vim syntax file
" Language:   Hoc
" Maintainer: Matthias Wolf <m@sushinara.net>
" URL:        https://github.com/matz-e/vim-hoc

if exists("b:current_syntax")
  finish
endif

syn keyword hocKeyword
      \ help return break continue stop print delete read debug double em
      \ depvar eqn local localobj strdef setpointer insert uninsert
      \ if else while for

syn keyword hocKeyword
      \ begintemplate endtemplate objectvar objref public external new

syn keyword hocKeyword proc nextgroup=hocFunctionName skipwhite
syn keyword hocKeyword func nextgroup=hocFunctionName skipwhite
syn keyword hocKeyword obfunc nextgroup=hocFunctionName skipwhite
syn keyword hocKeyword iterator nextgroup=hocFunctionName skipwhite

syn match hocFunctionName "\%([^[:cntrl:][:space:][:punct:][:digit:]]\)\%([^[:cntrl:][:space:][:punct:]]\|_\)*()" nextgroup=hocStatementGroup skipwhite display contained

syn match hocOperator display "\^\|&"
syn match hocOperator display "[-+*/<>]=\?"
syn match hocOperator display "!=\|==\|="
syn match hocOperator display "&&\|||"

syn keyword hocNull nil

syn match hocNumber '\<[-+]\?\d\+'
syn match hocNumber '\<[-+]\?\d\+.\d*'

syn match hocLocalVariable '\$&\?\w\+'

syn region hocString start=+"+ end=+"+
syn region hocStatementGroup start=+{+ end=+}+ transparent contained

syn match hocComment "//.*"
syn region hocComment start="/\*" end="*/"

hi def link hocComment Comment
hi def link hocLocalVariable Identifier
hi def link hocNull Identifier
hi def link hocNumber Number
hi def link hocOperator Operator
hi def link hocKeyword Keyword
hi def link hocString String

hi def link hocFunctionName Function
hi def link hocStatementGroup Function

let b:current_syntax = "hoc"

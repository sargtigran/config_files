" Vim syntax file
" Language:   wfg

set nospell

if exists("b:current_syntax")
  finish
endif

syn case match

" Instructions.
" The true and false tokens can be used for comparison opcodes, but it's
" much more common for these tokens to be used for boolean constants.
syn keyword wfgOperator mux  clt  sclt add  sub  mul  smul
syn keyword wfgOperator ls   rs   ars  and  or   xor  nand
syn keyword wfgOperator nor  xnor cne  ceq  ld   st   pass
syn keyword wfgOperator fork sink cle monitor assert


" Keywords.
syn keyword wfgKeyword module endmodule mem include

" Misc syntax.
syn match   wfgNumber /-\?\<\d\+\>/
syn match   wfgFloat  /-\?\<\d\+\.\d*\(e[+-]\d\+\)\?\>/
syn match   wfgHex  /\<0x\x\+\>/
syn match   wfgComment /\/\/.*$/
syn match   wfgComment /#.*$/
syn region  wfgString start=/"/ skip=/\\"/ end=/"/
syn match   wfgName /[a-zA-Z$._][a-zA-Z$._0-9]*/
syn match   wfgSpecSymbol /[:*;']/
syn match   wfgInputs /[a-zA-Z._0-9=*-]*\( *, *[a-zA-Z._0-9=*-]*\)* *;/ skipwhite contains=wfgNumber,wfgHex,wfgSpecSymbol
syn match   wfgOutputs /[a-zA-Z._*][ a-zA-Z._,0-9*]*[:\n]/ contains=wfgNumber,wfgHex,wfgSpecSymbol
syn match   wfgInstance /^[ \t]*[a-zA-Z._][a-zA-Z._,0-9]*/ skipwhite

hi WfgInstance ctermfg=green cterm=bold

if version >= 508 || !exists("did_c_syn_inits")
  if version < 508
    let did_c_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink wfgOperator Type
  HiLink wfgInstance Type "WfgInstance
  HiLink wfgNumber Number
  HiLink wfgHex Number
  HiLink wfgString String
  HiLink wfgOutputs Function
  HiLink wfgInputs  SpecialComment
  HiLink wfgKeyword Keyword
  HiLink wfgFloat Float
  HiLink wfgConstant Constant
  HiLink wfgComment Comment
  HiLink wfgSpecSymbol String 
"  HiLink wfgName Identifier

  delcommand HiLink
endif

let b:current_syntax = "wfg"

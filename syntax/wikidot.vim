" Vim syntax file
" Language:     Wikidot Syntax
" Maintainer:   Ammon Smith <ammon.i.smith@gmail.com>
" Filenames:    *.wikidot
" Last Change:  2019 January

if exists("b:current_syntax")
  finish
endif

if !exists('main_syntax')
  let main_syntax = 'wikidot'
endif

unlet! b:current_syntax

syntax match wikidotComment '\[!--.*--\]'
syntax match wikidotElement '\[\[\([^\]]\|\n\)\+\]\]'
syntax match wikidotLink '\(\[\[\[\([^\]]\|\n\)\+\]\]\]\|\[\w\+:\/\/\w\+\.\w\+.*\]\)'
syntax match wikidotBullet '^\s*\* '
syntax match wikidotTable '||\~\?'
syntax match wikidotSeparator '-\{4,}'
syntax match wikidotColor '##\(#\?\w\+|\)\?'

syntax region wikidotBold matchgroup=wikidotBold start='\*\*' end='\*\*'
syntax region wikidotItalic matchgroup=wikidotItalic start='//' end='//'
syntax region wikidotUnderline matchgroup=wikidotUnderline start='__' end='__'
syntax region wikidotBoldUnderline matchgroup=wikidotBoldUnderline start='\(\*\*__\|__\*\*\)' end='\(\*\*__\|__\*\*\)'
syntax region wikidotBoldItalic matchgroup=wikidotBoldItalic start='\(\*\*\/\/\|\/\/\*\*\)' end='\(\*\*\/\/\|\/\/\*\*\)'

syntax region wikidotH1 matchgroup=wikidotH1 start='^\s*+' end='$' keepend oneline contains=wikidotComment,wikidotLink,wikidotColor
syntax region wikidotH2 matchgroup=wikidotH2 start='^\s*++' end='$' keepend oneline contains=wikidotComment,wikidotLink,wikidotColor
syntax region wikidotH3 matchgroup=wikidotH3 start='^\s*+++' end='$' keepend oneline contains=wikidotComment,wikidotLink,wikidotColor
syntax region wikidotH4 matchgroup=wikidotH4 start='^\s*++++' end='$' keepend oneline contains=wikidotComment,wikidotLink,wikidotColor
syntax region wikidotH5 matchgroup=wikidotH5 start='^\s*+++++' end='$' keepend oneline contains=wikidotComment,wikidotLink,wikidotColor
syntax region wikidotH6 matchgroup=wikidotH6 start='^\s*++++++' end='$' keepend oneline contains=wikidotComment,wikidotLink,wikidotColor

highlight def Bold term=bold cterm=bold gui=bold
highlight def Italic term=italic cterm=italic gui=italic
highlight def Underline term=underline cterm=underline gui=underline
highlight def BoldItalic term=bold,italic cterm=bold,italic gui=bold,italic
highlight def BoldUnderline term=bold,underline cterm=bold,underline gui=bold,underline
highlight def ItalicUnderline term=italic,underline cterm=italic,underline gui=italic,underline

highlight default link wikidotComment Comment
highlight default link wikidotElement Structure
highlight default link wikidotLink String
highlight default link wikidotBullet Statement
highlight default link wikidotTable Statement
highlight default link wikidotSeparator PreProc
highlight default link wikidotColor Statement

highlight default link wikidotBold Bold
highlight default link wikidotItalic Italic
highlight default link wikidotUnderline Underline
highlight default link wikidotBoldItalic BoldItalic
highlight default link wikidotBoldUnderline BoldUnderline
highlight default link wikidotItalicUnderline ItalicUnderline

highlight default link wikidotH1 Title
highlight default link wikidotH2 Title
highlight default link wikidotH3 Title
highlight default link wikidotH4 Title
highlight default link wikidotH5 Title
highlight default link wikidotH6 Title

let b:current_syntax = "wikidot"
if main_syntax ==# 'wikidot'
  unlet main_syntax
endif

" vim:set sw=2:

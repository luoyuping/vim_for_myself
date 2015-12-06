set background=light
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "C++ light"

" We're setting the background color to white, aight?
highlight Normal guibg=#ffffff

highlight LineNr guifg=#c0c0c0

highlight cNumber guifg=#c00000
highlight link cNumbers cNumber
highlight link cFloat cNumber
highlight link cString cNumber
highlight link cCppString cNumber
highlight link cppBoolean cNumber

highlight cUserLabel gui=bold guifg=#c00000

highlight cType guifg=#88d800
highlight link cppType cType
highlight link cStorageClass cType

highlight cStructure guifg=#0099ff
highlight link cppStructure cStructure
highlight link cStatement cStructure
highlight link cppStatement cStructure
highlight link cRepeat cStructure
highlight link cConditional cStructure

highlight cInclude gui=bold guifg=#0099ff
highlight link cDefine cInclude
highlight link cPreCondit cInclude
highlight link cPreConditMatch cInclude

highlight cIncluded guifg=#0099ff

highlight cComment guifg=#c0c0c0
highlight link cCommentL cComment

highlight cTodo gui=bold guifg=#b0b0b0

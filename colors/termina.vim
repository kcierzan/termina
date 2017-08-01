" -----------------------------------------------------------------------------
" File: termina.vim
" Description: A Vim/Neovim colorscheme for 256-color terminals
" Author: Kyle Cierzan <kcierzan@gmail.com>
" Source: https://github.com/kcierzan/termina
" Last Modified: 09 May 2017
" -----------------------------------------------------------------------------

set background=dark
let g:colors_name="termina"
syntax reset

" Palette"{{{
" bg          = 0
" fg          = 15

" dark0_hard  =  234
" dark0       =  235
" dark0_soft  =  236
" dark1       =  237
" dark2       =  239
" dark3       =  241
" dark4       =  243
" dark4_256   =  243

" gray_245    =  245
" gray_244    =  244

" light0_hard =  230
" light0      =  229
" light0_soft =  228
" light1      =  223
" light2      =  250
" light3      =  248
" light4      =  246
" light4_256  =  246

" bright_red     = 9
" bright_green   = 10
" bright_yellow  = 11
" bright_blue    = 12
" bright_purple  = 13
" bright_aqua    = 14
" bright_orange  = 208

" neutral_red    = 1
" neutral_green  = 2
" neutral_yellow = 3
" neutral_blue   = 4
" neutral_purple = 5
" neutral_aqua   = 6
" neutral_orange = 166"}}}

if !exists('g:indentLine_color_term')
  let g:indentLine_color_term = 239
endif

set fillchars=vert:\│

" GUI
hi CursorLine                     ctermfg=none ctermbg=none  cterm=underline
hi CursorColumn                   ctermfg=none ctermbg=237
hi  TabLineFill                   ctermfg=243  ctermbg=0
hi  TabLine                       ctermfg=243  ctermbg=0
hi  TabLineSel                    ctermfg=0    ctermbg=4    cterm=inverse,bold
hi  MatchParen                    ctermfg=none ctermbg=241  cterm=underline
hi  ColorColumn                   ctermfg=none ctermbg=235
hi  Conceal                       ctermfg=4    ctermbg=none
hi  CursorLineNr                  ctermfg=11   ctermbg=none cterm=underline
hi  Visual                        ctermfg=235  ctermbg=11
hi  VisualNOS                     ctermfg=235  ctermbg=11
hi  Search                        ctermfg=11   ctermbg=235  cterm=inverse
hi  IncSearch                     ctermfg=166  ctermbg=235  cterm=inverse
hi  Underlined                    ctermfg=4    ctermbg=none cterm=underline
hi  StatusLine                    ctermfg=243  ctermbg=235  cterm=inverse
hi  StatusLineNC                  ctermfg=239  ctermbg=246  cterm=inverse
hi  VertSplit                     ctermfg=0  ctermbg=04
hi  WildMenu                      ctermfg=4    ctermbg=239  cterm=bold
hi  ErrorMsg                      ctermfg=235  ctermbg=1    cterm=bold
hi  NonText                       ctermfg=239  ctermbg=none
hi  SpecialKey                    ctermfg=239  ctermbg=none
hi  Directory                     ctermfg=4    ctermbg=none cterm=bold
hi  Title                         ctermfg=2    ctermbg=none cterm=bold
hi  MoreMsg                       ctermfg=3    ctermbg=none cterm=bold
hi  ModeMsg                       ctermfg=3    ctermbg=none cterm=bold
hi  Question                      ctermfg=5  ctermbg=none cterm=bold
hi  WarningMsg                    ctermfg=166  ctermbg=none cterm=bold
hi  LineNr                        ctermfg=243  ctermbg=none
hi  SignColumn                    ctermfg=none ctermbg=237
hi  Folded                        ctermfg=244  ctermbg=237
hi  FoldColumn                    ctermfg=244  ctermbg=237
hi  Cursor                        ctermfg=235  ctermbg=166  cterm=inverse
hi  vCursor                       ctermfg=none ctermbg=none cterm=inverse
hi  iCursor                       ctermfg=none ctermbg=none cterm=inverse
hi  lCursor                       ctermfg=none ctermbg=none cterm=inverse

" Generic Syntax
hi Special                        ctermfg=244  ctermbg=none cterm=bold
hi Comment                        ctermfg=244  ctermbg=none
hi Todo                           ctermfg=15   ctermbg=0
hi Error                          ctermfg=1    ctermbg=0    cterm=bold,inverse
hi Statement                      ctermfg=1    ctermbg=none cterm=bold
hi Conditional                    ctermfg=1    ctermbg=none
hi Repeat                         ctermfg=1    ctermbg=none
hi Label                          ctermfg=1    ctermbg=none
hi Exception                      ctermfg=1    ctermbg=none
hi Keyword                        ctermfg=1    ctermbg=none
hi Normal                         ctermfg=none ctermbg=none
hi Operator                       ctermfg=none ctermbg=none
hi Identifier                     ctermfg=4    ctermbg=none
hi Function                       ctermfg=2    ctermbg=none cterm=bold
hi PreProc                        ctermfg=6    ctermbg=none
hi Include                        ctermfg=6    ctermbg=none
hi Define                         ctermfg=6    ctermbg=none
hi Macro                          ctermfg=6    ctermbg=none
hi PreCondit                      ctermfg=6    ctermbg=none
hi Constant                       ctermfg=5    ctermbg=none
hi Character                      ctermfg=5    ctermbg=none
hi Boolean                        ctermfg=5    ctermbg=none
hi Number                         ctermfg=5    ctermbg=none
hi Float                          ctermfg=5    ctermbg=none
hi String                         ctermfg=2    ctermbg=none
hi Type                           ctermfg=3    ctermbg=none
hi StorageClass                   ctermfg=166  ctermbg=none
hi Structure                      ctermfg=6    ctermbg=none
hi Typedef                        ctermfg=3    ctermbg=none

" Completion Menu
hi Pmenu                          ctermfg=223  ctermbg=239
hi PmenuSel                       ctermfg=239  ctermbg=4   cterm=bold
hi PmenuSbar                      ctermfg=none ctermbg=239
hi PmenuThumb                     ctermfg=none ctermbg=243


hi DiffDelete                     ctermfg=1   ctermbg=235  cterm=inverse
hi DiffAdd                        ctermfg=2   ctermbg=235  cterm=inverse
hi DiffChange                     ctermfg=6   ctermbg=235  cterm=inverse
hi DiffText                       ctermfg=3   ctermbg=235  cterm=inverse

" EasyMotion
hi EasyMotion                     ctermfg=11  ctermbg=235  cterm=inverse
hi EasyMotionShade                ctermfg=244 ctermbg=none cterm=none


" GitGutter
hi GitGutterAdd                   ctermfg=2   ctermbg=none
hi GitGutterChange                ctermfg=6   ctermbg=none
hi GitGutterDelete                ctermfg=1   ctermbg=none
hi GitGutterChangeDelete          ctermfg=6   ctermbg=none

" Startify
hi StartifyBracket                ctermfg=248 ctermbg=none
hi StartifyFile                   ctermfg=4   ctermbg=none
hi StartifyNumber                 ctermfg=4   ctermbg=none
hi StartifyPath                   ctermfg=244 ctermbg=none
hi StartifySlash                  ctermfg=244 ctermbg=none
hi StartifySection                ctermfg=2   ctermbg=none
hi StartifySpecial                ctermfg=239 ctermbg=none
hi StartifyHeader                 ctermfg=1   ctermbg=none
hi StartifyFooter                 ctermfg=239 ctermbg=none

" BufTabLine
hi BufTabLineCurrent              ctermfg=235 ctermbg=4
hi BufTabLineActive               ctermfg=246 ctermbg=239
hi BufTabLineHidden               ctermfg=243 ctermbg=237
hi BufTabLineFill                 ctermfg=235 ctermbg=none

" Python
hi pythonBuiltin                  ctermfg=166 ctermbg=none
hi pythonBuiltinObj               ctermfg=166 ctermbg=none
hi pythonBuiltinFunc              ctermfg=166 ctermbg=none
hi pythonFunction                 ctermfg=6   ctermbg=none
hi pythonDecorator                ctermfg=1   ctermbg=none
hi pythonInclude                  ctermfg=4   ctermbg=none
hi pythonImport                   ctermfg=4   ctermbg=none
hi pythonRun                      ctermfg=4   ctermbg=none
hi pythonCoding                   ctermfg=4   ctermbg=none
hi pythonOperator                 ctermfg=1   ctermbg=none
hi pythonExceptions               ctermfg=5   ctermbg=none
hi pythonBoolean                  ctermfg=5   ctermbg=none
hi pythonDot                      ctermfg=248 ctermbg=none

" JSON
hi jsonKeyword                    ctermfg=2   ctermbg=none
hi jsonQuote                      ctermfg=2   ctermbg=none
hi jsonBraces                     ctermfg=223 ctermbg=none
hi jsonString                     ctermfg=223 ctermbg=none

" Vimscript
hi vimCommentTitle                ctermfg=243 ctermbg=none cterm=bold
hi vimNotation                    ctermfg=166 ctermbg=none
hi vimBracket                     ctermfg=166 ctermbg=none
hi vimMapModKey                   ctermfg=166 ctermbg=none
hi vimFuncSID                     ctermfg=248 ctermbg=none
hi vimSetSep                      ctermfg=248 ctermbg=none
hi vimSep                         ctermfg=248 ctermbg=none
hi vimContinue                    ctermfg=248 ctermbg=none

" Markdown
hi markdownH1                     ctermfg=2 ctermbg=none cterm=bold
hi markdownH2                     ctermfg=2 ctermbg=none cterm=bold
hi markdownH3                     ctermfg=3 ctermbg=none cterm=bold
hi markdownH4                     ctermfg=3 ctermbg=none cterm=bold
hi markdownH5                     ctermfg=3 ctermbg=none
hi markdownH6                     ctermfg=3 ctermbg=none
hi markdownCode                   ctermfg=6 ctermbg=none
hi markdownCodeBlock              ctermfg=6 ctermbg=none
hi markdownCodeDelimiter          ctermfg=6 ctermbg=none

hi markdownBlockquote             ctermfg=245 ctermbg=none
hi markdownListMarker             ctermfg=245 ctermbg=none
hi markdownOrderedListMarker      ctermfg=245 ctermbg=none
hi markdownRule                   ctermfg=245 ctermbg=none
hi markdownHeadingRule            ctermfg=245 ctermbg=none

hi markdownUrlDelimiter           ctermfg=248 ctermbg=none
hi markdownLinkDelimiter          ctermfg=248 ctermbg=none
hi markdownLinkTextDelimiter      ctermfg=248 ctermbg=none

hi markdownHeadingDelimiter       ctermfg=166 ctermbg=none
hi markdownUrl                    ctermfg=5   ctermbg=none
hi markdownUrlTitleDelimiter      ctermfg=2   ctermbg=none

" Javascript
hi javaScriptBraces               ctermfg=223
hi javaScriptFunction             ctermfg=5
hi javaScriptIdentifier           ctermfg=5
hi javaScriptMember               ctermfg=4
hi javaScriptNumber               ctermfg=11
hi javaScriptNull                 ctermfg=11
hi javaScriptParens               ctermfg=248


" Yet Another Javascript Syntax
hi javascriptImport               ctermfg=6
hi javascriptExport               ctermfg=6
hi javascriptClassKeyword         ctermfg=6
hi javascriptClassExtends         ctermfg=5
hi javascriptDefault              ctermfg=6

hi javascriptClassName            ctermfg=3
hi javascriptClassSuperName       ctermfg=3
hi javascriptGlobal               ctermfg=3

hi javascriptEndColons            ctermfg=223
hi javascriptFuncArg              ctermfg=223
hi javascriptGlobalMethod         ctermfg=223
hi javascriptNodeGlobal           ctermfg=223

hi javascriptVariable             ctermfg=166
hi javascriptIdentifier           ctermfg=166
hi javascriptClassSuper           ctermfg=166
hi javascriptIdentifier           ctermfg=166
hi javascriptClassSuper           ctermfg=166
hi javascriptVariable             ctermfg=1

hi javascriptFuncKeyword          ctermfg=166
hi javascriptAsyncFunc            ctermfg=166
hi javascriptFuncKeyword          ctermfg=6
hi javascriptAsyncFunc            ctermfg=6
hi javascriptClassStatic          ctermfg=166

hi javascriptOperator             ctermfg=1
hi javascriptForOperator          ctermfg=1
hi javascriptYield                ctermfg=1
hi javascriptExceptions           ctermfg=1
hi javascriptMessage              ctermfg=1

hi javascriptTemplateSB           ctermfg=9
hi javascriptTemplateSubstitution ctermfg=223

hi javascriptLabel                ctermfg=4
hi javascriptObjectLabel          ctermfg=4
hi javascriptPropertyName         ctermfg=4
hi javascriptLabel                ctermfg=223
hi javascriptObjectLabel          ctermfg=223
hi javascriptPropertyName         ctermfg=223
hi javaScriptRequire              ctermfg=6

hi javascriptLogicSymbols         ctermfg=223
hi javascriptArrowFunc            ctermfg=5

hi javascriptDocParamName         ctermfg=2
hi javascriptDocTags              ctermfg=246
hi javascriptDocNotation          ctermfg=5
hi javascriptDocParamType         ctermfg=246
hi javascriptDocNamedParamType    ctermfg=246

hi jsArrowFunction ctermfg=5
hi jsClassKeyword ctermfg=5
hi jsClassMethodType ctermfg=5
hi jsDocParam ctermfg=4
hi jsDocTags ctermfg=5
hi jsExport ctermfg=5
hi jsExportDefault ctermfg=5
hi jsExtendsKeyword ctermfg=5
hi jsFrom ctermfg=5
hi jsFuncCall ctermfg=4
hi jsFunction ctermfg=5
hi jsGenerator ctermfg=3
hi jsGlobalObjects ctermfg=3
hi jsImport ctermfg=5
hi jsModuleAs ctermfg=5
hi jsModuleWords ctermfg=5
hi jsModules ctermfg=5
hi jsNull ctermfg=11
hi jsOperator ctermfg=5
hi jsStorageClass ctermfg=5
hi jsSuper ctermfg=1
hi jsTemplateBraces ctermfg=9
hi jsTemplateVar ctermfg=2
hi jsThis ctermfg=1
hi jsUndefined ctermfg=11

hi htmlTitle          ctermfg=223
hi htmlArg            ctermfg=11
hi htmlEndTag         ctermfg=223
hi htmlH1             ctermfg=223
hi htmlLink           ctermfg=5
hi htmlSpecialChar    ctermfg=11
hi htmlSpecialTagName ctermfg=1
hi htmlTag            ctermfg=223
hi htmlTagName        ctermfg=1

" ALE
hi ALEErrorSign                   ctermfg=1
hi ALEWarningSign                 ctermfg=3

" CleverF
hi CleverFDefaultLabel            ctermfg=196 cterm=bold

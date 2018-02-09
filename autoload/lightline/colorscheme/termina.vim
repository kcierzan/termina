" =============================================================================
" Filename: termina.vim
" Author: Kyle Cierzan
" License: MIT License
" =============================================================================
" fg = 15
" bg = 0
"
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

let s:blend_bg    = [ '#2d2a2e', 236 ]
let s:dark4       = [ '#808080', 243 ]
let s:dark3       = [ '#808080', 241 ]
let s:dark2       = [ '#000000', 239 ]
let s:black       = [ '#000000', 0 ]
let s:dark1       = [ '#00ff00', 237 ]
let s:dark0       = [ '#ffff00', 235 ]
let s:light0      = [ '#0000ff', 229 ]
let s:light1      = [ '#00ffff', 253 ]
let s:light2      = [ '#c0c0c0', 250 ]
let s:light3      = [ '#ffffff', 248 ]
let s:orange      = [ '#ff0000', 9 ]
let s:red         = [ '#800000', 1 ]
let s:green       = [ '#008000', 2 ]
let s:yellow      = [ '#808000', 3 ]
let s:blue        = [ '#000080', 4 ]
let s:magenta     = [ '#800080', 5 ]
let s:cyan        = [ '#008080', 6 ]
let s:white       = [ '#008080', 7 ]
let s:gray        = [ '#008080', 8 ]
let s:dark_red    = [ '#008080', 9 ]
let s:dark_green  = [ '#008080', 10 ]
let s:dark_yellow = [ '#008080', 11 ]
let s:dark_cyan   = [ '#008080', 12 ]
let s:violet      = [ '#ff00ff', 13 ]
let s:pale_blue   = [ '#ff00ff', 14 ]
let s:bright_white   = [ '#ff00ff', 15 ]

" TODO: Set sensible values for this
if &background ==# 'light'
  let [s:dark3, s:light3] = [s:light3, s:dark3]
  let [s:dark2, s:light2] = [s:light2, s:dark2]
  let [s:dark1, s:light1] = [s:light1, s:dark1]
  let [s:dark0, s:light0] = [s:light0, s:dark0]
  let [s:black]           = [s:white]
endif

let s:p                 = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left     = [ [ s:black, s:blue ], [ s:black, s:dark3 ], [ s:black, s:dark_red ], [ s:magenta, s:black ] ]
let s:p.insert.left     = [ [ s:black, s:green ], [ s:black, s:dark3 ], [ s:black, s:dark_red ], [ s:magenta, s:black ] ]
let s:p.visual.left     = [ [ s:black, s:magenta ], [ s:black, s:dark3 ], [ s:black, s:dark_red ], [ s:magenta, s:black ] ]
let s:p.replace.left    = [ [ s:black, s:red ], [ s:black, s:dark3 ], [ s:black, s:dark_red ], [ s:magenta, s:black ] ]
let s:p.inactive.left   = [ [ s:black, s:black ], [ s:black, s:dark3 ], [ s:dark_red, s:dark1 ], [ s:magenta, s:black ] ]

let s:p.normal.right    = [ [ s:black, s:dark2 ], [ s:black, s:dark3 ] ]
let s:p.insert.right    = [ [ s:black, s:dark2 ], [ s:black, s:dark3 ] ]
let s:p.visual.right    = [ [ s:black, s:dark2 ], [ s:black, s:dark3 ] ]
let s:p.replace.right   = [ [ s:black, s:dark2 ], [ s:black, s:dark3 ] ]
let s:p.inactive.right  = [ [ s:black, s:black ], [ s:black, s:black ] ]

let s:p.normal.middle   = [ [ s:light1, s:black ] ]

let s:p.inactive.middle = [ [ s:light0, s:black ] ]
let s:p.tabline.left    = [ [ s:magenta, s:black ] ]
let s:p.tabline.tabsel  = [ [ s:black, s:blue ] ]
let s:p.tabline.right   = [ [ s:black, s:blue ] ]
let s:p.normal.error    = [ [ s:black, s:red ] ]
let s:p.normal.warning  = [ [ s:black, s:yellow ] ]

if &background ==# 'light'
  let s:p.normal.middle = [ [ s:light1, s:white ] ]
  let s:p.inactive.middle = [ [ s:light0, s:white ] ]
  let s:p.inactive.right  = [ [ s:white, s:white ], [ s:white, s:white ] ]
let s:p.inactive.left   = [ [ s:white, s:white ], [ s:black, s:dark3 ], [ s:dark_red, s:dark1 ], [ s:magenta, s:dark1 ] ]
endif

let g:lightline#colorscheme#termina#palette = lightline#colorscheme#flatten(s:p)

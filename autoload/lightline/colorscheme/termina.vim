" =============================================================================
" Filename: termina.vim
" Author: Kyle Cierzan
" License: MIT License
" =============================================================================
" fg = 15
" bg = 0

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
let s:base03  = [ '#808080', 241 ]
let s:base02  = [ '#000000', 239 ]
let s:black   = ['#000000', 0]
let s:base01  = [ '#00ff00', 237 ]
let s:base00  = [ '#ffff00', 235 ]
let s:base0   = [ '#0000ff', 229 ]
let s:base1   = [ '#00ffff', 223 ]
let s:base2   = [ '#c0c0c0', 250 ]
let s:base3   = [ '#ffffff', 248 ]
let s:yellow  = [ '#808000', 3 ]
let s:orange  = [ '#ff0000', 9 ]
let s:red     = [ '#800000', 1 ]
let s:magenta = [ '#800080', 5 ]
let s:violet  = [ '#ff00ff', 13 ]
let s:blue    = [ '#000080', 4 ]
let s:cyan    = [ '#008080', 6 ]
let s:green   = [ '#008000', 2 ]
if &background ==# 'light'
  let [s:base03, s:base3] = [s:base3, s:base03]
  let [s:base02, s:base2] = [s:base2, s:base02]
  let [s:base01, s:base1] = [s:base1, s:base01]
  let [s:base00, s:base0] = [s:base0, s:base00]
endif
let s:p                    = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left        = [ [ s:black, s:blue ], [ s:base3, s:base01 ] ]
let s:p.normal.right       = [ [ s:base3, s:base01 ], [ s:base3, s:base01 ] ]
let s:p.inactive.right     = [ [ s:base02, s:base01 ], [ s:base3, s:base01 ] ]
let s:p.inactive.left      = [ [ s:black, s:base02 ], [ s:base00, s:base02 ] ]
let s:p.insert.left        = [ [ s:black, s:green ], [ s:base3, s:base01 ] ]
let s:p.replace.left       = [ [ s:black, s:red ], [ s:base3, s:base01 ] ]
let s:p.visual.left        = [ [ s:black, s:magenta ], [ s:base3, s:base01 ] ]
let s:p.normal.middle      = [ [ s:base1, s:black ] ]
let s:p.inactive.middle    = [ [ s:base0, s:black ] ]
let s:p.tabline.left = [ [ s:base3, s:base01 ] ]
let s:p.tabline.tabsel     = [ [ s:black, s:blue ] ]
" let s:p.tabline.middle     = [ [ s:base01, s:black ] ]
let s:p.tabline.right      = copy(s:p.normal.right)
let s:p.normal.error       = [ [ s:black, s:red ] ]
let s:p.normal.warning     = [ [ s:base02, s:yellow ] ]

let g:lightline#colorscheme#termina#palette = lightline#colorscheme#flatten(s:p)

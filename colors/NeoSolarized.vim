" Personal settings
" ---------------------------------------------------------------------
"

highlight! link txtBold Identifier
highlight! link zshVariableDef Identifier
highlight! link zshFunction Function
highlight! link MatchParen DiffText

highlight! link CTagsModule Type
highlight! link CTagsClass Type
highlight! link CTagsMethod Identifier
highlight! link CTagsSingleton Identifier

highlight! link htmlTagName Type

highlight! PreProc gui=bold

highlight! Normal guifg=#77A5B1
highlight! Constant guifg=#00BCE0
highlight! Comment guifg=#52737B
highlight! link htmlLink Include
highlight! CursorLine cterm=NONE gui=NONE
highlight! Type gui=bold
highlight! EasyMotionTarget ctermfg=100 guifg=#4CE660 gui=bold
" ---------------------------------------------------------------------
" OPTIONS:
" ---------------------------------------------------------------------
" g:neosolarized_contrast
" g:neosolarized_visibility
" g:neosolarized_diffmode
" g:neosolarized_termtrans
" g:neosolarized_bold
" g:neosolarized_underline
" g:neosolarized_italic
"
" ---------------------------------------------------------------------
" Put the following two lines in your
" .vimrc:
"
"     syntax enable
"     set background=dark
"     colorscheme NeoSolarized
"
" or, for the light background mode of Solarized:
"
"     syntax enable
"     set background=light
"     colorscheme NeoSolarized
"
" ---------------------------------------------------------------------
" COLOR VALUES
" ---------------------------------------------------------------------
" Download palettes and files from: http://ethanschoonover.com/solarized
"
" L\*a\*b values are canonical (White D65, Reference D50), other values are
" matched in sRGB space.
"
" SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      sRGB        HSB
" --------- ------- ---- -------  ----------- ---------- ----------- -----------
" base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
" base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
" base01    #586e75 10/7 brgreen  240 #4e4e4e 45 -07 -07  88 110 117 194  25  46
" base00    #657b83 11/7 bryellow 241 #585858 50 -07 -07 101 123 131 195  23  51
" base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
" base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
" base2     #eee8d5  7/7 white    254 #d7d7af 92 -00  10 238 232 213  44  11  93
" base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
" yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
" orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
" red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
" magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
" violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
" blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
" cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
" green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60
"
" ---------------------------------------------------------------------
" COLORSCHEME HACKING
" ---------------------------------------------------------------------
"
" Useful commands for testing colorschemes:
" :source $VIMRUNTIME/syntax/hitest.vim
" :help highlight-groups
" :help cterm-colors
" :help group-name
"
" Useful links for developing colorschemes:
" http://www.vim.org/scripts/script.php?script_id=2937
" http://vimcasts.org/episodes/creating-colorschemes-for-vim/
" http://www.frexx.de/xterm-256-notes/"
"
" }}}

" Default option values"{{{
" ---------------------------------------------------------------------

let g:neosolarized_contrast = get(g:, "neosolarized_contrast", "normal")
let g:neosolarized_visibility = get(g:, "neosolarized_visibility", "normal")
let g:neosolarized_diffmode = get(g:, "neosolarized_diffmode", "normal")
let g:neosolarized_bold = get(g:, "neosolarized_bold", 1)
let g:neosolarized_underline = get(g:, "neosolarized_underline", 1)
let g:neosolarized_italic = get(g:, "neosolarized_italic", 0)
let g:neosolarized_termtrans = get(g:, "neosolarized_termtrans", 0)
let g:neosolarized_vertSplitBgTrans = get(g:, "neosolarized_vertSplitBgTrans", 1)

"}}}

" Colorscheme initialization "{{{
" ---------------------------------------------------------------------
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "NeoSolarized"

"}}}

" GUI & CSApprox hexadecimal palettes"{{{
" ---------------------------------------------------------------------
"
" Set gui and terminal at the same time.
    let s:gui_mode       = "gui"
    let s:gui_base03      = "#002b36"
    let s:gui_base02      = "#073642"
    let s:gui_base01      = "#586e75"
    let s:gui_base00      = "#657b83"
    let s:gui_base0       = "#839496"
    let s:gui_base1       = "#93a1a1"
    let s:gui_base2       = "#eee8d5"
    let s:gui_base3       = "#fdf6e3"
    let s:gui_yellow      = "#b58900"
    let s:gui_orange      = "#cb4b16"
    let s:gui_red         = "#dc322f"
    let s:gui_magenta     = "#d33682"
    let s:gui_violet      = "#6c71c4"
    let s:gui_blue        = "#268bd2"
    let s:gui_cyan        = "#2aa198"
    let s:gui_green       = "#719e07" "experimental
    "let s:green       = "#859900" "original

    let s:term_mode       = "cterm"
    let s:term_base03      = "8"
    let s:term_base02      = "0"
    let s:term_base01      = "10"
    let s:term_base00      = "11"
    let s:term_base0       = "12"
    let s:term_base1       = "14"
    let s:term_base2       = "7"
    let s:term_base3       = "15"
    let s:term_yellow      = "3"
    let s:term_orange      = "9"
    let s:term_red         = "1"
    let s:term_magenta     = "5"
    let s:term_violet      = "13"
    let s:term_blue        = "4"
    let s:term_cyan        = "6"
    let s:term_green       = "2"

"}}}

" Formatting options and null values for passthrough effect "{{{
" ---------------------------------------------------------------------
    let s:gui_none        = "NONE"
    let s:term_none       = "NONE"
    let s:n               = "NONE"
    let s:c               = ",undercurl"
    let s:r               = ",reverse"
    let s:s               = ",standout"
    let s:ou              = ""
    let s:ob              = ""
"}}}

" Background value based on termtrans setting "{{{
" ---------------------------------------------------------------------
if (has("gui_running") || g:neosolarized_termtrans == 0)
    let s:gui_back        = s:gui_base03
    let s:term_back        = s:term_base03
else
    let s:gui_back        = "NONE"
    let s:term_back        = "NONE"
endif
"}}}

" Alternate light scheme "{{{
" ---------------------------------------------------------------------
if &background == "light"
    " GUI
    let s:gui_temp03    =   s:gui_base03
    let s:gui_temp02    =   s:gui_base02
    let s:gui_temp01    =   s:gui_base01
    let s:gui_temp00    =   s:gui_base00
    let s:gui_base03    =   s:gui_base3
    let s:gui_base02    =   s:gui_base2
    let s:gui_base01    =   s:gui_base1
    let s:gui_base00    =   s:gui_base0
    let s:gui_base0     =   s:gui_temp00
    let s:gui_base1     =   s:gui_temp01
    let s:gui_base2     =   s:gui_temp02
    let s:gui_base3     =   s:gui_temp03
    if (s:gui_back != "NONE")
        let s:gui_back  =   s:gui_base03
    endif

    " terminal
    let s:term_temp03   =   s:term_base03
    let s:term_temp02   =   s:term_base02
    let s:term_temp01   =   s:term_base01
    let s:term_temp00   =   s:term_base00
    let s:term_base03   =   s:term_base3
    let s:term_base02   =   s:term_base2
    let s:term_base01   =   s:term_base1
    let s:term_base00   =   s:term_base0
    let s:term_base0    =   s:term_temp00
    let s:term_base1    =   s:term_temp01
    let s:term_base2    =   s:term_temp02
    let s:term_base3    =   s:term_temp03
    if (s:term_back != "NONE")
        let s:term_back =   s:term_base03
    endif
endif
"}}}

" Optional contrast schemes "{{{
" ---------------------------------------------------------------------
if g:neosolarized_contrast == "high"
    let s:gui_base01      = s:gui_base00
    let s:gui_base00      = s:gui_base0
    let s:gui_base0       = s:gui_base1
    let s:gui_base1       = s:gui_base2
    let s:gui_base2       = s:gui_base3
    let s:gui_back        = s:gui_back

    let s:term_base01      = s:term_base00
    let s:term_base00      = s:term_base0
    let s:term_base0       = s:term_base1
    let s:term_base1       = s:term_base2
    let s:term_base2       = s:term_base3
    let s:term_back        = s:term_back
endif
if g:neosolarized_contrast == "low"
    let s:gui_back        = s:gui_base02
    let s:term_back        = s:term_base02
    let s:ou          = ",underline"
endif
"}}}

" Overrides dependent on user specified values and environment "{{{
" ---------------------------------------------------------------------
if (g:neosolarized_bold == 0 || &t_Co == 8 )
    let s:b           = ""
    let s:bb          = ",bold"
else
    let s:b           = ",bold"
    let s:bb          = ""
endif

if g:neosolarized_underline == 0
    let s:u           = ""
else
    let s:u           = ",underline"
endif

if g:neosolarized_italic == 0
    let s:i           = ""
else
    let s:i           = ",italic"
endif
"}}}

" Highlighting primitives"{{{
" ---------------------------------------------------------------------

execute "let s:bg_none      = ' "   .   "guibg=".s:gui_none     .   " ctermbg=".s:term_none      .   "'"
execute "let s:bg_back      = ' "   .   "guibg=".s:gui_back     .   " ctermbg=".s:term_back      .   "'"
execute "let s:bg_base03    = ' "   .   "guibg=".s:gui_base03   .   " ctermbg=".s:term_base03    .   "'"
execute "let s:bg_base02    = ' "   .   "guibg=".s:gui_base02   .   " ctermbg=".s:term_base02    .   "'"
execute "let s:bg_base01    = ' "   .   "guibg=".s:gui_base01   .   " ctermbg=".s:term_base01    .   "'"
execute "let s:bg_base00    = ' "   .   "guibg=".s:gui_base00   .   " ctermbg=".s:term_base00    .   "'"
execute "let s:bg_base0     = ' "   .   "guibg=".s:gui_base0    .   " ctermbg=".s:term_base0     .   "'"
execute "let s:bg_base1     = ' "   .   "guibg=".s:gui_base1    .   " ctermbg=".s:term_base1     .   "'"
execute "let s:bg_base2     = ' "   .   "guibg=".s:gui_base2    .   " ctermbg=".s:term_base2     .   "'"
execute "let s:bg_base3     = ' "   .   "guibg=".s:gui_base3    .   " ctermbg=".s:term_base3     .   "'"
execute "let s:bg_green     = ' "   .   "guibg=".s:gui_green    .   " ctermbg=".s:term_green     .   "'"
execute "let s:bg_yellow    = ' "   .   "guibg=".s:gui_yellow   .   " ctermbg=".s:term_yellow    .   "'"
execute "let s:bg_orange    = ' "   .   "guibg=".s:gui_orange   .   " ctermbg=".s:term_orange    .   "'"
execute "let s:bg_red       = ' "   .   "guibg=".s:gui_red      .   " ctermbg=".s:term_red       .   "'"
execute "let s:bg_magenta   = ' "   .   "guibg=".s:gui_magenta  .   " ctermbg=".s:term_magenta   .   "'"
execute "let s:bg_violet    = ' "   .   "guibg=".s:gui_violet   .   " ctermbg=".s:term_violet    .   "'"
execute "let s:bg_blue      = ' "   .   "guibg=".s:gui_blue     .   " ctermbg=".s:term_blue      .   "'"
execute "let s:bg_cyan      = ' "   .   "guibg=".s:gui_cyan     .   " ctermbg=".s:term_cyan      .   "'"

execute "let s:fg_none      = ' "   .   "guifg=".s:gui_none     .   " ctermfg=".s:term_none      .   "'"
execute "let s:fg_back      = ' "   .   "guifg=".s:gui_back     .   " ctermfg=".s:term_back      .   "'"
execute "let s:fg_base03    = ' "   .   "guifg=".s:gui_base03   .   " ctermfg=".s:term_base03    .   "'"
execute "let s:fg_base02    = ' "   .   "guifg=".s:gui_base02   .   " ctermfg=".s:term_base02    .   "'"
execute "let s:fg_base01    = ' "   .   "guifg=".s:gui_base01   .   " ctermfg=".s:term_base01    .   "'"
execute "let s:fg_base00    = ' "   .   "guifg=".s:gui_base00   .   " ctermfg=".s:term_base00    .   "'"
execute "let s:fg_base0     = ' "   .   "guifg=".s:gui_base0    .   " ctermfg=".s:term_base0     .   "'"
execute "let s:fg_base1     = ' "   .   "guifg=".s:gui_base1    .   " ctermfg=".s:term_base1     .   "'"
execute "let s:fg_base2     = ' "   .   "guifg=".s:gui_base2    .   " ctermfg=".s:term_base2     .   "'"
execute "let s:fg_base3     = ' "   .   "guifg=".s:gui_base3    .   " ctermfg=".s:term_base3     .   "'"
execute "let s:fg_green     = ' "   .   "guifg=".s:gui_green    .   " ctermfg=".s:term_green     .   "'"
execute "let s:fg_yellow    = ' "   .   "guifg=".s:gui_yellow   .   " ctermfg=".s:term_yellow    .   "'"
execute "let s:fg_orange    = ' "   .   "guifg=".s:gui_orange   .   " ctermfg=".s:term_orange    .   "'"
execute "let s:fg_red       = ' "   .   "guifg=".s:gui_red      .   " ctermfg=".s:term_red       .   "'"
execute "let s:fg_magenta   = ' "   .   "guifg=".s:gui_magenta  .   " ctermfg=".s:term_magenta   .   "'"
execute "let s:fg_violet    = ' "   .   "guifg=".s:gui_violet   .   " ctermfg=".s:term_violet    .   "'"
execute "let s:fg_blue      = ' "   .   "guifg=".s:gui_blue     .   " ctermfg=".s:term_blue      .   "'"
execute "let s:fg_cyan      = ' "   .   "guifg=".s:gui_cyan     .   " ctermfg=".s:term_cyan      .   "'"

execute "let s:fmt_none     = ' "   .   "gui=NONE"          .   " cterm=NONE"           .   "'"
execute "let s:fmt_bold     = ' "   .   "gui=NONE".s:b      .   " cterm=NONE".s:b       .   "'"
execute "let s:fmt_bldi     = ' "   .   "gui=NONE".s:b      .   " cterm=NONE".s:b       .   "'"
execute "let s:fmt_undr     = ' "   .   "gui=NONE".s:u      .   " cterm=NONE".s:u       .   "'"
execute "let s:fmt_undb     = ' "   .   "gui=NONE".s:u.s:b  .   " cterm=NONE".s:u.s:b   .   "'"
execute "let s:fmt_undi     = ' "   .   "gui=NONE".s:u      .   " cterm=NONE".s:u       .   "'"
execute "let s:fmt_uopt     = ' "   .   "gui=NONE".s:ou     .   " cterm=NONE".s:ou      .   "'"
execute "let s:fmt_curl     = ' "   .   "gui=NONE".s:c      .   " cterm=NONE".s:c       .   "'"
execute "let s:fmt_ital     = ' "   .   "gui=NONE".s:i      .   " cterm=NONE".s:i       .   "'"
execute "let s:fmt_stnd     = ' "   .   "gui=NONE".s:s      .   " cterm=NONE".s:s       .   "'"
execute "let s:fmt_revr     = ' "   .   "gui=NONE".s:r      .   " cterm=NONE".s:r       .   "'"
execute "let s:fmt_revb     = ' "   .   "gui=NONE".s:r.s:b  .   " cterm=NONE".s:r.s:b   .   "'"
" revbb (reverse bold for bright colors) is only set to actual bold in low
" color terminals (t_co=8, such as OS X Terminal.app) and should only be used
" with colors 8-15.
execute "let s:fmt_revbb    = ' "   .   "gui=NONE".s:r.s:bb     .   " cterm=NONE".s:r.s:bb      .   "'"
execute "let s:fmt_revbbu   = ' "   .   "gui=NONE".s:r.s:bb.s:u .   " cterm=NONE".s:r.s:bb.s:u  .   "'"

if has("termguicolors") || has("gui_running") && &termguicolors
    execute "let s:sp_none      = ' guisp="     .       s:gui_none      .   "'"
    execute "let s:sp_back      = ' guisp="     .       s:gui_back      .   "'"
    execute "let s:sp_base03    = ' guisp="     .       s:gui_base03    .   "'"
    execute "let s:sp_base02    = ' guisp="     .       s:gui_base02    .   "'"
    execute "let s:sp_base01    = ' guisp="     .       s:gui_base01    .   "'"
    execute "let s:sp_base00    = ' guisp="     .       s:gui_base00    .   "'"
    execute "let s:sp_base0     = ' guisp="     .       s:gui_base0     .   "'"
    execute "let s:sp_base1     = ' guisp="     .       s:gui_base1     .   "'"
    execute "let s:sp_base2     = ' guisp="     .       s:gui_base2     .   "'"
    execute "let s:sp_base3     = ' guisp="     .       s:gui_base3     .   "'"
    execute "let s:sp_green     = ' guisp="     .       s:gui_green     .   "'"
    execute "let s:sp_yellow    = ' guisp="     .       s:gui_yellow    .   "'"
    execute "let s:sp_orange    = ' guisp="     .       s:gui_orange    .   "'"
    execute "let s:sp_red       = ' guisp="     .       s:gui_red       .   "'"
    execute "let s:sp_magenta   = ' guisp="     .       s:gui_magenta   .   "'"
    execute "let s:sp_violet    = ' guisp="     .       s:gui_violet    .   "'"
    execute "let s:sp_blue      = ' guisp="     .       s:gui_blue      .   "'"
    execute "let s:sp_cyan      = ' guisp="     .       s:gui_cyan      .   "'"
else
    let s:sp_none           =   ""
    let s:sp_back           =   ""
    let s:sp_base03         =   ""
    let s:sp_base02         =   ""
    let s:sp_base01         =   ""
    let s:sp_base00         =   ""
    let s:sp_base0          =   ""
    let s:sp_base1          =   ""
    let s:sp_base2          =   ""
    let s:sp_base3          =   ""
    let s:sp_green          =   ""
    let s:sp_yellow         =   ""
    let s:sp_orange         =   ""
    let s:sp_red            =   ""
    let s:sp_magenta        =   ""
    let s:sp_violet         =   ""
    let s:sp_blue           =   ""
    let s:sp_cyan           =   ""
endif

"}}}

" Basic highlighting"{{{
" ---------------------------------------------------------------------
" note that link syntax to avoid duplicate configuration doesn't work with the
" execute compiled formats

execute "highlight! Normal"         .s:fmt_none   .s:fg_base0  .s:bg_back

execute "highlight! Comment"        .s:fmt_ital   .s:fg_base01 .s:bg_none
"       *Comment         any comment

execute "highlight! Constant"       .s:fmt_none   .s:fg_cyan   .s:bg_none
"       *Constant        any constant
"        String          a string constant: "this is a string"
"        Character       a character constant: 'c', '\n'
"        Number          a number constant: 234, 0xff
"        Boolean         a boolean constant: TRUE, false
"        Float           a floating point constant: 2.3e10

execute "highlight! Identifier"     .s:fmt_none   .s:fg_blue   .s:bg_none
"       *Identifier      any variable name
"        Function        function name (also: methods for classes)
"
execute "highlight! Statement"      .s:fmt_none   .s:fg_green  .s:bg_none
"       *Statement       any statement
"        Conditional     if, then, else, endif, switch, etc.
"        Repeat          for, do, while, etc.
"        Label           case, default, etc.
"        Operator        "sizeof", "+", "*", etc.
"        Keyword         any other keyword
"        Exception       try, catch, throw

execute "highlight! PreProc"        .s:fmt_none   .s:fg_orange .s:bg_none
"       *PreProc         generic Preprocessor
"        Include         preprocessor #include
"        Define          preprocessor #define
"        Macro           same as Define
"        PreCondit       preprocessor #if, #else, #endif, etc.

execute "highlight! Type"           .s:fmt_none   .s:fg_yellow .s:bg_none
"       *Type            int, long, char, etc.
"        StorageClass    static, register, volatile, etc.
"        Structure       struct, union, enum, etc.
"        Typedef         A typedef

execute "highlight! Special"        .s:fmt_none   .s:fg_red    .s:bg_none
"       *Special         any special symbol
"        SpecialChar     special character in a constant
"        Tag             you can use CTRL-] on this
"        Delimiter       character that needs attention
"        SpecialComment  special things inside a comment
"        Debug           debugging statements

execute "highlight! Underlined"     .s:fmt_none   .s:fg_violet .s:bg_none
"       *Underlined      text that stands out, HTML links

execute "highlight! Ignore"         .s:fmt_none   .s:fg_none   .s:bg_none
"       *Ignore          left blank, hidden  |hl-Ignore|

execute "highlight! Error"          .s:fmt_bold   .s:fg_red    .s:bg_none
"       *Error           any erroneous construct

execute "highlight! Todo"           .s:fmt_bold   .s:fg_magenta.s:bg_none
"       *Todo            anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX
"
"}}}

" Extended highlighting "{{{
" ---------------------------------------------------------------------
if  (g:neosolarized_visibility=="high")
    execute "highlight! SpecialKey" .s:fmt_revr   .s:fg_red    .s:bg_none
    execute "highlight! NonText"    .s:fmt_bold   .s:fg_red    .s:bg_none
elseif  (g:neosolarized_visibility=="low")
    execute "highlight! SpecialKey" .s:fmt_bold   .s:fg_base02 .s:bg_none
    execute "highlight! NonText"    .s:fmt_bold   .s:fg_base02 .s:bg_none
else
    execute "highlight! SpecialKey" .s:fmt_bold   .s:fg_base00 .s:bg_base02
    execute "highlight! NonText"    .s:fmt_bold   .s:fg_base00 .s:bg_none
endif
execute "highlight! StatusLine"     .s:fmt_none   .s:fg_base1  .s:bg_base02 .s:fmt_revbb
execute "highlight! StatusLineNC"   .s:fmt_none   .s:fg_base00 .s:bg_base02 .s:fmt_revbb
execute "highlight! Visual"         .s:fmt_none   .s:fg_base01 .s:bg_base03 .s:fmt_revbb
execute "highlight! Directory"      .s:fmt_none   .s:fg_blue   .s:bg_none
execute "highlight! ErrorMsg"       .s:fmt_revr   .s:fg_red    .s:bg_none
execute "highlight! IncSearch"      .s:fmt_stnd   .s:fg_orange .s:bg_none
execute "highlight! Search"         .s:fmt_revr   .s:fg_yellow .s:bg_none
execute "highlight! MoreMsg"        .s:fmt_none   .s:fg_blue   .s:bg_none
execute "highlight! ModeMsg"        .s:fmt_none   .s:fg_blue   .s:bg_none
execute "highlight! LineNr"         .s:fmt_none   .s:fg_base01 .s:bg_base02
execute "highlight! Question"       .s:fmt_bold   .s:fg_cyan   .s:bg_none
if (g:neosolarized_vertSplitBgTrans == 1)
    execute "highlight! VertSplit"  .s:fmt_none   .s:fg_base00 .s:bg_none
else
    execute "highlight! VertSplit"  .s:fmt_none   .s:fg_base00 .s:bg_base00
endif
execute "highlight! Title"          .s:fmt_bold   .s:fg_orange .s:bg_none
execute "highlight! VisualNOS"      .s:fmt_stnd   .s:fg_none   .s:bg_base02 .s:fmt_revbb
execute "highlight! WarningMsg"     .s:fmt_bold   .s:fg_red    .s:bg_none
execute "highlight! WildMenu"       .s:fmt_none   .s:fg_base2  .s:bg_base02 .s:fmt_revbb
execute "highlight! Folded"         .s:fmt_bold   .s:fg_base0  .s:bg_base02  .s:sp_base03
execute "highlight! FoldColumn"     .s:fmt_none   .s:fg_base0  .s:bg_base02

if (g:neosolarized_diffmode=="high")
    execute "highlight! DiffAdd"        .s:fmt_revr   .s:fg_green  .s:bg_none
    execute "highlight! DiffChange"     .s:fmt_revr   .s:fg_yellow .s:bg_none
    execute "highlight! DiffDelete"     .s:fmt_revr   .s:fg_red    .s:bg_none
    execute "highlight! DiffText"       .s:fmt_revr   .s:fg_blue   .s:bg_none
elseif  (g:neosolarized_diffmode=="low")
    execute "highlight! DiffAdd"        .s:fmt_undr   .s:fg_green  .s:bg_none   .s:sp_green
    execute "highlight! DiffChange"     .s:fmt_undr   .s:fg_yellow .s:bg_none   .s:sp_yellow
    execute "highlight! DiffDelete"     .s:fmt_bold   .s:fg_red    .s:bg_none
    execute "highlight! DiffText"       .s:fmt_undr   .s:fg_blue   .s:bg_none   .s:sp_blue
else " normal
    execute "highlight! DiffAdd"        .s:fmt_bold   .s:fg_green  .s:bg_base02 .s:sp_green
    execute "highlight! DiffChange"     .s:fmt_bold   .s:fg_yellow .s:bg_base02 .s:sp_yellow
    execute "highlight! DiffDelete"     .s:fmt_bold   .s:fg_red    .s:bg_base02
    execute "highlight! DiffText"       .s:fmt_bold   .s:fg_blue   .s:bg_base02 .s:sp_blue
endif

execute "highlight! SignColumn"     .s:fmt_none   .s:fg_base0  .s:bg_none
execute "highlight! Conceal"        .s:fmt_none   .s:fg_blue   .s:bg_none
execute "highlight! SpellBad"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_red
execute "highlight! SpellCap"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_violet
execute "highlight! SpellRare"      .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_cyan
execute "highlight! SpellLocal"     .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_yellow
execute "highlight! Pmenu"          .s:fmt_none   .s:fg_base0  .s:bg_base02  .s:fmt_revbb
execute "highlight! PmenuSel"       .s:fmt_none   .s:fg_base01 .s:bg_base2   .s:fmt_revbb
execute "highlight! PmenuSbar"      .s:fmt_none   .s:fg_base2  .s:bg_base0   .s:fmt_revbb
execute "highlight! PmenuThumb"     .s:fmt_none   .s:fg_base0  .s:bg_base03  .s:fmt_revbb
execute "highlight! TabLine"        .s:fmt_undr   .s:fg_base0  .s:bg_base02  .s:sp_base0
execute "highlight! TabLineFill"    .s:fmt_undr   .s:fg_base0  .s:bg_base02  .s:sp_base0
execute "highlight! TabLineSel"     .s:fmt_undr   .s:fg_base01 .s:bg_base2   .s:sp_base0  .s:fmt_revbbu
execute "highlight! CursorColumn"   .s:fmt_none   .s:fg_none   .s:bg_base02
execute "highlight! CursorLine"     .s:fmt_uopt   .s:fg_none   .s:bg_base02  .s:sp_base1
execute "highlight! CursorLineNr"    .s:fmt_uopt   .s:fg_none   .s:bg_base02  .s:sp_base1
execute "highlight! ColorColumn"    .s:fmt_none   .s:fg_none   .s:bg_base02
execute "highlight! Cursor"         .s:fmt_none   .s:fg_base03 .s:bg_base0
highlight! link lCursor Cursor
execute "highlight! MatchParen"     .s:fmt_bold   .s:fg_red    .s:bg_base01

"}}}

" vim syntax highlighting "{{{
" ---------------------------------------------------------------------
"execute "highlight! vimLineComment" . s:fg_base01 .s:bg_none   .s:fmt_ital
"highlight! link vimComment Comment
"highlight! link vimLineComment Comment
highlight! link vimVar Identifier
highlight! link vimFunc Function
highlight! link vimUserFunc Function
highlight! link helpSpecial Special
highlight! link vimSet Normal
highlight! link vimSetEqual Normal
execute "highlight! vimCommentString"  .s:fmt_none    .s:fg_violet .s:bg_none
execute "highlight! vimCommand"        .s:fmt_none    .s:fg_yellow .s:bg_none
execute "highlight! vimCmdSep"         .s:fmt_bold    .s:fg_blue   .s:bg_none
execute "highlight! helpExample"       .s:fmt_none    .s:fg_base1  .s:bg_none
execute "highlight! helpOption"        .s:fmt_none    .s:fg_cyan   .s:bg_none
execute "highlight! helpNote"          .s:fmt_none    .s:fg_magenta.s:bg_none
execute "highlight! helpVim"           .s:fmt_none    .s:fg_magenta.s:bg_none
execute "highlight! helpHyperTextJump" .s:fmt_undr    .s:fg_blue   .s:bg_none
execute "highlight! helpHyperTextEntry".s:fmt_none    .s:fg_green  .s:bg_none
execute "highlight! vimIsCommand"      .s:fmt_none    .s:fg_base00 .s:bg_none
execute "highlight! vimSynMtchOpt"     .s:fmt_none    .s:fg_yellow .s:bg_none
execute "highlight! vimSynType"        .s:fmt_none    .s:fg_cyan   .s:bg_none
execute "highlight! vimHiLink"         .s:fmt_none    .s:fg_blue   .s:bg_none
execute "highlight! vimHiGroup"        .s:fmt_none    .s:fg_blue   .s:bg_none
execute "highlight! vimGroup"          .s:fmt_undb    .s:fg_blue   .s:bg_none
"}}}

" diff highlighting "{{{
" ---------------------------------------------------------------------
highlight! link diffAdded Statement
highlight! link diffLine Identifier
"}}}

" git & gitcommit highlighting "{{{
"git
"execute "highlight! gitDateHeader"
"execute "highlight! gitIdentityHeader"
"execute "highlight! gitIdentityKeyword"
"execute "highlight! gitNotesHeader"
"execute "highlight! gitReflogHeader"
"execute "highlight! gitKeyword"
"execute "highlight! gitIdentity"
"execute "highlight! gitEmailDelimiter"
"execute "highlight! gitEmail"
"execute "highlight! gitDate"
"execute "highlight! gitMode"
"execute "highlight! gitHashAbbrev"
"execute "highlight! gitHash"
"execute "highlight! gitReflogMiddle"
"execute "highlight! gitReference"
"execute "highlight! gitStage"
"execute "highlight! gitType"
"execute "highlight! gitDiffAdded"
"execute "highlight! gitDiffRemoved"
"gitcommit
"execute "highlight! gitcommitSummary"
execute "highlight! gitcommitComment"      .s:fmt_ital     .s:fg_base01    .s:bg_none
highlight! link gitcommitUntracked gitcommitComment
highlight! link gitcommitDiscarded gitcommitComment
highlight! link gitcommitSelected  gitcommitComment
execute "highlight! gitcommitUnmerged"     .s:fmt_bold     .s:fg_green     .s:bg_none
execute "highlight! gitcommitOnBranch"     .s:fmt_bold     .s:fg_base01    .s:bg_none
execute "highlight! gitcommitBranch"       .s:fmt_bold     .s:fg_magenta   .s:bg_none
highlight! link gitcommitNoBranch gitcommitBranch
execute "highlight! gitcommitDiscardedType".s:fmt_none     .s:fg_red       .s:bg_none
execute "highlight! gitcommitSelectedType" .s:fmt_none     .s:fg_green     .s:bg_none
"execute "highlight! gitcommitUnmergedType"
"execute "highlight! gitcommitType"
"execute "highlight! gitcommitNoChanges"
"execute "highlight! gitcommitHeader"
execute "highlight! gitcommitHeader"       .s:fmt_none     .s:fg_base01    .s:bg_none
execute "highlight! gitcommitUntrackedFile".s:fmt_bold     .s:fg_cyan      .s:bg_none
execute "highlight! gitcommitDiscardedFile".s:fmt_bold     .s:fg_red       .s:bg_none
execute "highlight! gitcommitSelectedFile" .s:fmt_bold     .s:fg_green     .s:bg_none
execute "highlight! gitcommitUnmergedFile" .s:fmt_bold     .s:fg_yellow    .s:bg_none
execute "highlight! gitcommitFile"         .s:fmt_bold     .s:fg_base0     .s:bg_none
highlight! link gitcommitDiscardedArrow gitcommitDiscardedFile
highlight! link gitcommitSelectedArrow  gitcommitSelectedFile
highlight! link gitcommitUnmergedArrow  gitcommitUnmergedFile
"execute "highlight! gitcommitArrow"
"execute "highlight! gitcommitOverflow"
"execute "highlight! gitcommitBlank"
" }}}
"
" html highlighting "{{{
" ---------------------------------------------------------------------
execute "highlight! htmlTag"           .s:fmt_none .s:fg_base01 .s:bg_none
execute "highlight! htmlEndTag"        .s:fmt_none .s:fg_base01 .s:bg_none
execute "highlight! htmlTagN"          .s:fmt_bold .s:fg_base1  .s:bg_none
execute "highlight! htmlTagName"       .s:fmt_bold .s:fg_blue   .s:bg_none
execute "highlight! htmlSpecialTagName".s:fmt_ital .s:fg_blue   .s:bg_none
execute "highlight! htmlArg"           .s:fmt_none .s:fg_base00 .s:bg_none
execute "highlight! javaScript"        .s:fmt_none .s:fg_yellow .s:bg_none
"}}}

" perl highlighting "{{{
" ---------------------------------------------------------------------
execute "highlight! perlHereDoc"    . s:fg_base1  .s:bg_back   .s:fmt_none
execute "highlight! perlVarPlain"   . s:fg_yellow .s:bg_back   .s:fmt_none
execute "highlight! perlStatementFileDesc". s:fg_cyan.s:bg_back.s:fmt_none

"}}}

" tex highlighting "{{{
" ---------------------------------------------------------------------
execute "highlight! texStatement"   . s:fg_cyan   .s:bg_back   .s:fmt_none
execute "highlight! texMathZoneX"   . s:fg_yellow .s:bg_back   .s:fmt_none
execute "highlight! texMathMatcher" . s:fg_yellow .s:bg_back   .s:fmt_none
execute "highlight! texMathMatcher" . s:fg_yellow .s:bg_back   .s:fmt_none
execute "highlight! texRefLabel"    . s:fg_yellow .s:bg_back   .s:fmt_none
"}}}

" ruby highlighting "{{{
" ---------------------------------------------------------------------
execute "highlight! rubyDefine"     . s:fg_base1  .s:bg_back   .s:fmt_bold
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"highlight! link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

"highlight! link rubyClass             Keyword
"highlight! link rubyModule            Keyword
"highlight! link rubyKeyword           Keyword
"highlight! link rubyOperator          Operator
"highlight! link rubyIdentifier        Identifier
"highlight! link rubyInstanceVariable  Identifier
"highlight! link rubyGlobalVariable    Identifier
"highlight! link rubyClassVariable     Identifier
"highlight! link rubyConstant          Type
"}}}

" haskell syntax highlighting"{{{
" ---------------------------------------------------------------------
" For use with syntax/haskell.vim : Haskell Syntax File
" http://www.vim.org/scripts/script.php?script_id=3034
" See also Steffen Siering's github repository:
" http://github.com/urso/dotrc/blob/master/vim/syntax/haskell.vim
" ---------------------------------------------------------------------
"
" Treat True and False specially, see the plugin referenced above
let hs_highlight_boolean=1
" highlight delims, see the plugin referenced above
let hs_highlight_delimiters=1

execute "highlight! cPreCondit". s:fg_orange.s:bg_none   .s:fmt_none

execute "highlight! VarId"    . s:fg_blue   .s:bg_none   .s:fmt_none
execute "highlight! ConId"    . s:fg_yellow .s:bg_none   .s:fmt_none
execute "highlight! hsImport" . s:fg_magenta.s:bg_none   .s:fmt_none
execute "highlight! hsString" . s:fg_base00 .s:bg_none   .s:fmt_none

execute "highlight! hsStructure"        . s:fg_cyan   .s:bg_none   .s:fmt_none
execute "highlight! hs_hlFunctionName"  . s:fg_blue   .s:bg_none
execute "highlight! hsStatement"        . s:fg_cyan   .s:bg_none   .s:fmt_none
execute "highlight! hsImportLabel"      . s:fg_cyan   .s:bg_none   .s:fmt_none
execute "highlight! hs_OpFunctionName"  . s:fg_yellow .s:bg_none   .s:fmt_none
execute "highlight! hs_DeclareFunction" . s:fg_orange .s:bg_none   .s:fmt_none
execute "highlight! hsVarSym"           . s:fg_cyan   .s:bg_none   .s:fmt_none
execute "highlight! hsType"             . s:fg_yellow .s:bg_none   .s:fmt_none
execute "highlight! hsTypedef"          . s:fg_cyan   .s:bg_none   .s:fmt_none
execute "highlight! hsModuleName"       . s:fg_green  .s:bg_none   .s:fmt_undr
execute "highlight! hsModuleStartLabel" . s:fg_magenta.s:bg_none   .s:fmt_none
highlight! link hsImportParams      Delimiter
highlight! link hsDelimTypeExport   Delimiter
highlight! link hsModuleStartLabel  hsStructure
highlight! link hsModuleWhereLabel  hsModuleStartLabel

" following is for the haskell-conceal plugin
" the first two items don't have an impact, but better safe
execute "highlight! hsNiceOperator"     . s:fg_cyan   .s:bg_none   .s:fmt_none
execute "highlight! hsniceoperator"     . s:fg_cyan   .s:bg_none   .s:fmt_none

"}}}

" pandoc markdown syntax highlighting "{{{
" ---------------------------------------------------------------------

"PandocHiLink pandocNormalBlock
execute "highlight! pandocTitleBlock"               .s:fg_blue   .s:bg_none   .s:fmt_none
execute "highlight! pandocTitleBlockTitle"          .s:fg_blue   .s:bg_none   .s:fmt_bold
execute "highlight! pandocTitleComment"             .s:fg_blue   .s:bg_none   .s:fmt_bold
execute "highlight! pandocComment"                  .s:fg_base01 .s:bg_none   .s:fmt_ital
execute "highlight! pandocVerbatimBlock"            .s:fg_yellow .s:bg_none   .s:fmt_none
highlight! link pandocVerbatimBlockDeep         pandocVerbatimBlock
highlight! link pandocCodeBlock                 pandocVerbatimBlock
highlight! link pandocCodeBlockDelim            pandocVerbatimBlock
execute "highlight! pandocBlockQuote"               .s:fg_blue   .s:bg_none   .s:fmt_none
execute "highlight! pandocBlockQuoteLeader1"        .s:fg_blue   .s:bg_none   .s:fmt_none
execute "highlight! pandocBlockQuoteLeader2"        .s:fg_cyan   .s:bg_none   .s:fmt_none
execute "highlight! pandocBlockQuoteLeader3"        .s:fg_yellow .s:bg_none   .s:fmt_none
execute "highlight! pandocBlockQuoteLeader4"        .s:fg_red    .s:bg_none   .s:fmt_none
execute "highlight! pandocBlockQuoteLeader5"        .s:fg_base0  .s:bg_none   .s:fmt_none
execute "highlight! pandocBlockQuoteLeader6"        .s:fg_base01 .s:bg_none   .s:fmt_none
execute "highlight! pandocListMarker"               .s:fg_magenta.s:bg_none   .s:fmt_none
execute "highlight! pandocListReference"            .s:fg_magenta.s:bg_none   .s:fmt_undr

" Definitions
" ---------------------------------------------------------------------
let s:fg_pdef = s:fg_violet
execute "highlight! pandocDefinitionBlock"              .s:fg_pdef  .s:bg_none  .s:fmt_none
execute "highlight! pandocDefinitionTerm"               .s:fg_pdef  .s:bg_none  .s:fmt_stnd
execute "highlight! pandocDefinitionIndctr"             .s:fg_pdef  .s:bg_none  .s:fmt_bold
execute "highlight! pandocEmphasisDefinition"           .s:fg_pdef  .s:bg_none  .s:fmt_ital
execute "highlight! pandocEmphasisNestedDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_bldi
execute "highlight! pandocStrongEmphasisDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_bold
execute "highlight! pandocStrongEmphasisNestedDefinition"   .s:fg_pdef.s:bg_none.s:fmt_bldi
execute "highlight! pandocStrongEmphasisEmphasisDefinition" .s:fg_pdef.s:bg_none.s:fmt_bldi
execute "highlight! pandocStrikeoutDefinition"          .s:fg_pdef  .s:bg_none  .s:fmt_revr
execute "highlight! pandocVerbatimInlineDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_none
execute "highlight! pandocSuperscriptDefinition"        .s:fg_pdef  .s:bg_none  .s:fmt_none
execute "highlight! pandocSubscriptDefinition"          .s:fg_pdef  .s:bg_none  .s:fmt_none

" Tables
" ---------------------------------------------------------------------
let s:fg_ptable = s:fg_blue
execute "highlight! pandocTable"                        .s:fg_ptable.s:bg_none  .s:fmt_none
execute "highlight! pandocTableStructure"               .s:fg_ptable.s:bg_none  .s:fmt_none
highlight! link pandocTableStructureTop             pandocTableStructre
highlight! link pandocTableStructureEnd             pandocTableStructre
execute "highlight! pandocTableZebraLight"              .s:fg_ptable.s:bg_base03.s:fmt_none
execute "highlight! pandocTableZebraDark"               .s:fg_ptable.s:bg_base02.s:fmt_none
execute "highlight! pandocEmphasisTable"                .s:fg_ptable.s:bg_none  .s:fmt_ital
execute "highlight! pandocEmphasisNestedTable"          .s:fg_ptable.s:bg_none  .s:fmt_bldi
execute "highlight! pandocStrongEmphasisTable"          .s:fg_ptable.s:bg_none  .s:fmt_bold
execute "highlight! pandocStrongEmphasisNestedTable"    .s:fg_ptable.s:bg_none  .s:fmt_bldi
execute "highlight! pandocStrongEmphasisEmphasisTable"  .s:fg_ptable.s:bg_none  .s:fmt_bldi
execute "highlight! pandocStrikeoutTable"               .s:fg_ptable.s:bg_none  .s:fmt_revr
execute "highlight! pandocVerbatimInlineTable"          .s:fg_ptable.s:bg_none  .s:fmt_none
execute "highlight! pandocSuperscriptTable"             .s:fg_ptable.s:bg_none  .s:fmt_none
execute "highlight! pandocSubscriptTable"               .s:fg_ptable.s:bg_none  .s:fmt_none

" Headings
" ---------------------------------------------------------------------
let s:fg_phead = s:fg_orange
execute "highlight! pandocHeading"                      .s:fg_phead .s:bg_none.s:fmt_bold
execute "highlight! pandocHeadingMarker"                .s:fg_yellow.s:bg_none.s:fmt_bold
execute "highlight! pandocEmphasisHeading"              .s:fg_phead .s:bg_none.s:fmt_bldi
execute "highlight! pandocEmphasisNestedHeading"        .s:fg_phead .s:bg_none.s:fmt_bldi
execute "highlight! pandocStrongEmphasisHeading"        .s:fg_phead .s:bg_none.s:fmt_bold
execute "highlight! pandocStrongEmphasisNestedHeading"  .s:fg_phead .s:bg_none.s:fmt_bldi
execute "highlight! pandocStrongEmphasisEmphasisHeading".s:fg_phead .s:bg_none.s:fmt_bldi
execute "highlight! pandocStrikeoutHeading"             .s:fg_phead .s:bg_none.s:fmt_revr
execute "highlight! pandocVerbatimInlineHeading"        .s:fg_phead .s:bg_none.s:fmt_bold
execute "highlight! pandocSuperscriptHeading"           .s:fg_phead .s:bg_none.s:fmt_bold
execute "highlight! pandocSubscriptHeading"             .s:fg_phead .s:bg_none.s:fmt_bold

" Links
" ---------------------------------------------------------------------
execute "highlight! pandocLinkDelim"                .s:fg_base01 .s:bg_none   .s:fmt_none
execute "highlight! pandocLinkLabel"                .s:fg_blue   .s:bg_none   .s:fmt_undr
execute "highlight! pandocLinkText"                 .s:fg_blue   .s:bg_none   .s:fmt_undb
execute "highlight! pandocLinkURL"                  .s:fg_base00 .s:bg_none   .s:fmt_undr
execute "highlight! pandocLinkTitle"                .s:fg_base00 .s:bg_none   .s:fmt_undi
execute "highlight! pandocLinkTitleDelim"           .s:fg_base01 .s:bg_none   .s:fmt_undi   .s:sp_base00
execute "highlight! pandocLinkDefinition"           .s:fg_cyan   .s:bg_none   .s:fmt_undr   .s:sp_base00
execute "highlight! pandocLinkDefinitionID"         .s:fg_blue   .s:bg_none   .s:fmt_bold
execute "highlight! pandocImageCaption"             .s:fg_violet .s:bg_none   .s:fmt_undb
execute "highlight! pandocFootnoteLink"             .s:fg_green  .s:bg_none   .s:fmt_undr
execute "highlight! pandocFootnoteDefLink"          .s:fg_green  .s:bg_none   .s:fmt_bold
execute "highlight! pandocFootnoteInline"           .s:fg_green  .s:bg_none   .s:fmt_undb
execute "highlight! pandocFootnote"                 .s:fg_green  .s:bg_none   .s:fmt_none
execute "highlight! pandocCitationDelim"            .s:fg_magenta.s:bg_none   .s:fmt_none
execute "highlight! pandocCitation"                 .s:fg_magenta.s:bg_none   .s:fmt_none
execute "highlight! pandocCitationID"               .s:fg_magenta.s:bg_none   .s:fmt_undr
execute "highlight! pandocCitationRef"              .s:fg_magenta.s:bg_none   .s:fmt_none

" Main Styles
" ---------------------------------------------------------------------
execute "highlight! pandocStyleDelim"               .s:fg_base01 .s:bg_none  .s:fmt_none
execute "highlight! pandocEmphasis"                 .s:fg_base0  .s:bg_none  .s:fmt_ital
execute "highlight! pandocEmphasisNested"           .s:fg_base0  .s:bg_none  .s:fmt_bldi
execute "highlight! pandocStrongEmphasis"           .s:fg_base0  .s:bg_none  .s:fmt_bold
execute "highlight! pandocStrongEmphasisNested"     .s:fg_base0  .s:bg_none  .s:fmt_bldi
execute "highlight! pandocStrongEmphasisEmphasis"   .s:fg_base0  .s:bg_none  .s:fmt_bldi
execute "highlight! pandocStrikeout"                .s:fg_base01 .s:bg_none  .s:fmt_revr
execute "highlight! pandocVerbatimInline"           .s:fg_yellow .s:bg_none  .s:fmt_none
execute "highlight! pandocSuperscript"              .s:fg_violet .s:bg_none  .s:fmt_none
execute "highlight! pandocSubscript"                .s:fg_violet .s:bg_none  .s:fmt_none

execute "highlight! pandocRule"                     .s:fg_blue   .s:bg_none  .s:fmt_bold
execute "highlight! pandocRuleLine"                 .s:fg_blue   .s:bg_none  .s:fmt_bold
execute "highlight! pandocEscapePair"               .s:fg_red    .s:bg_none  .s:fmt_bold
execute "highlight! pandocCitationRef"              .s:fg_magenta.s:bg_none   .s:fmt_none
execute "highlight! pandocNonBreakingSpace"         . s:fg_red   .s:bg_none  .s:fmt_revr
highlight! link pandocEscapedCharacter          pandocEscapePair
highlight! link pandocLineBreak                 pandocEscapePair

" Embedded Code
" ---------------------------------------------------------------------
execute "highlight! pandocMetadataDelim"            .s:fg_base01 .s:bg_none   .s:fmt_none
execute "highlight! pandocMetadata"                 .s:fg_blue   .s:bg_none   .s:fmt_none
execute "highlight! pandocMetadataKey"              .s:fg_blue   .s:bg_none   .s:fmt_none
execute "highlight! pandocMetadata"                 .s:fg_blue   .s:bg_none   .s:fmt_bold
highlight! link pandocMetadataTitle             pandocMetadata

"}}}

" neomake highlighting "{{{
" ---------------------------------------------------------------------
execute "highlight! NeomakeErrorSign"          . s:fg_orange   .s:bg_none   .s:fmt_none
execute "highlight! NeomakeWarningSign"        . s:fg_yellow   .s:bg_none   .s:fmt_none
execute "highlight! NeomakeMessageSign"        . s:fg_cyan     .s:bg_none   .s:fmt_none
execute "highlight! NeomakeNeomakeInfoSign"    . s:fg_green    .s:bg_none   .s:fmt_none

"}}}

" gitgutter highlighting "{{{
" ---------------------------------------------------------------------
exe "highlight! GitGutterAdd"              . s:fg_green    .s:bg_none  .s:fmt_none
exe "highlight! GitGutterChange"           . s:fg_yellow   .s:bg_none  .s:fmt_none
exe "highlight! GitGutterDelete"           . s:fg_red      .s:bg_none  .s:fmt_none
exe "highlight! GitGutterChangeDelete"     . s:fg_red      .s:bg_none  .s:fmt_none
" }}}"

" ALE highlighting "{{{
" ---------------------------------------------------------------------
exe "highlight! ALEErrorSign"          . s:fg_orange   .s:bg_none   .s:fmt_none
exe "highlight! ALEWarningSign"        . s:fg_yellow   .s:bg_none   .s:fmt_none
" }}}"

" NeoVim terminal buffer colours "{{{
" ---------------------------------------------------------------------
let g:terminal_color_0 = s:gui_base03
let g:terminal_color_1 = s:gui_red
let g:terminal_color_2 = s:gui_green
let g:terminal_color_3 = s:gui_yellow
let g:terminal_color_4 = s:gui_blue
let g:terminal_color_5 = s:gui_magenta
let g:terminal_color_6 = s:gui_cyan
let g:terminal_color_7 = s:gui_base2
let g:terminal_color_8 =  "#516970"
let g:terminal_color_9 = s:gui_orange
let g:terminal_color_10 = s:gui_base01
let g:terminal_color_11 = s:gui_base00
let g:terminal_color_12 = s:gui_base0
let g:terminal_color_13 = s:gui_violet
let g:terminal_color_14 = s:gui_base1
let g:terminal_color_15 = s:gui_base3
"}}}

" Utility autocommand "{{{
" ---------------------------------------------------------------------
" In cases where Solarized is initialized inside a terminal vim session and
" then transferred to a gui session via the command `:gui`, the gui vim process
" does not re-read the colorscheme (or .vimrc for that matter) so any `has_gui`
" related code that sets gui specific values isn't executed.
"
" Currently, Solarized sets only the cterm or gui values for the colorscheme
" depending on gui or terminal mode. It's possible that, if the following
" autocommand method is deemed excessively poor form, that approach will be
" used again and the autocommand below will be dropped.
"
" However it seems relatively benign in this case to include the autocommand
" here. It fires only in cases where vim is transferring from terminal to gui
" mode (detected with the script scope s:vmode variable). It also allows for
" other potential terminal customizations that might make gui mode suboptimal.

augroup myColors
    autocmd GUIEnter * if (has('gui_running')) | execute "colorscheme " . g:colors_name | endif
augroup END

"}}}

" highlight TODOs
syntax keyword Todo README TODO XXX FIXME CHANGEME QUESTION NOTE

highlight! link Conceal Comment
highlight! TermCursor ctermfg=green guifg=green

highlight! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

highlight! Visual guifg=#FFFFFF gui=bold guibg=#D13A82 ctermfg=207

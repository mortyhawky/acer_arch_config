" Vim default colorscheme for Neovim
" Based on Vim 9.2 default.vim and syncolor.vim
"
" This reproduces Vim's default terminal behavior:
"   - terminal supplies the actual background
"   - background=light selects Vim's light syntax palette
"   - Normal is left cleared
"
" Vim 9.2:
"   :set background?
"   background=light
"
"   :set termguicolors?
"   notermguicolors


" Clear existing highlighting.
hi clear Normal
hi clear

" Select Vim's light syntax palette.
set background=light

" Reset syntax highlighting if it is already enabled.
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "vim_default"


" ============================================================
" Vim 9.2 syncolor.vim
" Light background palette
" ============================================================

hi Comment      term=bold cterm=NONE ctermfg=DarkBlue
      \ ctermbg=NONE gui=NONE guifg=Blue guibg=NONE

hi Constant     term=NONE cterm=NONE ctermfg=DarkRed
      \ ctermbg=NONE gui=NONE guifg=Magenta guibg=NONE

hi Special      term=NONE cterm=NONE ctermfg=DarkMagenta
      \ ctermbg=NONE gui=NONE guifg=#6a5acd guibg=NONE

hi Identifier   term=NONE cterm=NONE ctermfg=DarkCyan
      \ ctermbg=NONE gui=NONE guifg=DarkCyan guibg=NONE

hi Statement    term=NONE cterm=NONE ctermfg=Brown
      \ ctermbg=NONE gui=bold guifg=Brown guibg=NONE

hi PreProc      term=NONE cterm=NONE ctermfg=DarkMagenta
      \ ctermbg=NONE gui=NONE guifg=#6a0dad guibg=NONE

hi Type         term=NONE cterm=NONE ctermfg=DarkGreen
      \ ctermbg=NONE gui=bold guifg=SeaGreen guibg=NONE

hi Underlined   term=NONE cterm=underline ctermfg=DarkMagenta
      \ gui=underline guifg=SlateBlue

hi Ignore       term=NONE cterm=NONE ctermfg=white
      \ ctermbg=NONE gui=NONE guifg=bg guibg=NONE

hi Added        term=NONE cterm=NONE ctermfg=DarkGreen
      \ ctermbg=NONE gui=NONE guifg=SeaGreen guibg=NONE

hi Changed      term=NONE cterm=NONE ctermfg=Blue
      \ ctermbg=NONE gui=NONE guifg=DodgerBlue guibg=NONE

hi Removed      term=NONE cterm=NONE ctermfg=Red
      \ ctermbg=NONE gui=NONE guifg=Red guibg=NONE


" ============================================================
" Common syntax groups
" ============================================================

hi Error        term=reverse cterm=NONE ctermfg=White
      \ ctermbg=Red gui=NONE guifg=White guibg=Red

hi Todo         term=standout cterm=NONE ctermfg=Black
      \ ctermbg=Yellow gui=NONE guifg=Blue guibg=Yellow

hi Bold         term=bold cterm=bold ctermfg=NONE ctermbg=NONE
      \ gui=bold guifg=NONE guibg=NONE

hi Italic       term=italic cterm=italic ctermfg=NONE ctermbg=NONE
      \ gui=italic guifg=NONE guibg=NONE

hi BoldItalic   term=bold,italic cterm=bold,italic
      \ ctermfg=NONE ctermbg=NONE gui=bold,italic
      \ guifg=NONE guibg=NONE


" ============================================================
" Vim 9.2 syntax links
" ============================================================

hi link String         Constant
hi link Character      Constant
hi link Number         Constant
hi link Boolean        Constant
hi link Regexp         Constant
hi link Float          Number

hi link Function       Identifier

hi link Conditional    Statement
hi link Repeat         Statement
hi link Label          Statement
hi link Operator       Statement
hi link Keyword        Statement
hi link Exception      Statement

hi link Include        PreProc
hi link Define         PreProc
hi link Macro          PreProc
hi link PreCondit      PreProc

hi link StorageClass   Type
hi link Structure      Type
hi link Typedef        Type

hi link Tag            Special
hi link SpecialChar    Special
hi link Delimiter      Special
hi link SpecialComment Special
hi link Debug          Special


" vim: sw=2

" __________________________________________
" ___  ____/________  ____  ______  ______(_)___ _
" __  __/  __  ___/_  __ \/  __  / / /_  __ \_  /__  __ `/
" _  /___  / /   / /_/ // /_/ // /_/ / / /_/ /  / _  /_/ /
" /_____/  /_/    \____/ \____ \\__,_/  \____//_/  _\__,_/
"                              \____/
"
" File:       nullrus.vim
" Source:     https://github.com/Sequoia-Theme/vs-code (Michael Andreuzza)
" Palette:    https://github.com/Sequoia-Theme/color-palette
"             https://github.com/Sequoia-Theme/CodeSandbox (monochrome.json,
"             the actual VS Code theme colors/tokenColors used as ground truth)
" Ported by:  Claude, for Bunny
" License:    MIT
"
" NOTE: Monochrome is structurally identical to Moonlight upstream — same
" background/UI chrome, same base neutrals. The only thing that changes is
" the six accent colors: the colored (blue/purple/pink/orange/grey/white) set
" is swapped for a six-step grayscale ramp. Confirmed against monochrome.json,
" not assumed from the name. Like Moonlight, there's no verified published
" light variant, so this is dark-only — no &background branching.

if !has('gui_running') && &t_Co < 256
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

" let g:colors_name = 'sequoia-monochrome'
let g:colors_name = 'nullrus'

" ---------------------------------------------------------------------------
" Palette (source: Sequoia-Theme/color-palette + CodeSandbox/monochrome.json)
" ---------------------------------------------------------------------------
"   bg0            #0a0b04   editor.background / rich-black-fogra-39   (same as Moonlight)
"   bg_widget      #111216   panel/popup/statusline bg                  (same as Moonlight)
"   bg_alt         #131317   eerie-black, inlay-hint bg                 (same as Moonlight)
"   bg_highlight   #16161c   cursorline / lineHighlightBackground (derived, same as Moonlight)
"   bg_selection   #1f1f24   raisin-black, Visual selection             (same as Moonlight)
"   bg_pmenu_sel   #22222a   selected list/pmenu item                   (same as Moonlight)
"   border         #43444d   dark-liver, indent guides, whitespace      (same as Moonlight)
"   fg_dim         #575861   davys-grey, punctuation / inactive text    (same as Moonlight)
"   fg0            #868690   roman-silver, default foreground           (same as Moonlight)
"   -- accents, grayscale instead of hue --
"   grayblue  #626983   dark-blue-gray  -- was blue #8eb6f5   (keyword/constant/storage)
"   rhythm    #7c829d   rhythm          -- was purple #c58fff (type/cursor/info)
"   manatee   #999eb2   manatee         -- was pink #f58ee0   (error/invalid/support.function)
"   cadet     #b6bac8   cadet-blue-crayola -- was orange #ffbb88 (numbers/entity.name/highlight)
"   lightgray #d3d5de   light-gray      -- was grey #9898a6   (string/warning)
"   ghostwhite #e2e4ed  ghost-white     -- was white #fdfdfe  (parameters/links/emphasis)

hi Normal ctermbg=233 ctermfg=245 guibg=#0a0b04 guifg=#999eb2
hi CursorColumn cterm=NONE ctermbg=234 ctermfg=NONE guibg=#0a0b04 guifg=NONE
hi ColorColumn cterm=NONE ctermbg=234 ctermfg=NONE guibg=#0a0b04 guifg=NONE
" hi CursorLine cterm=NONE ctermbg=234 ctermfg=NONE guibg=#0a0b04 guifg=NONE
hi CursorLine cterm=NONE ctermbg=234 ctermfg=NONE guibg=NONE guifg=NONE
hi Comment cterm=italic ctermfg=238 gui=italic guibg=NONE guifg=#43444d
hi Conceal ctermbg=233 ctermfg=240 guibg=#0a0b04 guifg=#575861
" hi Constant ctermfg=60 guifg=#aabbc5
" hi Constant ctermfg=60 guifg=#506385
" hi Constant ctermfg=60 guifg=#c58fff
" hi Constant ctermfg=60 guifg=#00dd9a
hi Constant ctermfg=60 guifg=#7aaeee
hi Cursor ctermbg=103 ctermfg=245 guibg=#7c829d guifg=#868690
" hi Cursor ctermbg=103 ctermfg=245 guibg=#0a0b04 guifg=#00a86b
" hi CursorLineNr cterm=NONE ctermbg=234 ctermfg=245 guibg=#e2e4ed guifg=#16161c
hi CursorLineNr cterm=NONE ctermbg=234 ctermfg=245 guibg=#43444d guifg=#e2e4ed
hi Delimiter ctermfg=240 guifg=#575861
hi DiffAdd ctermbg=234 ctermfg=103 guibg=#18191f guifg=#7c829d
hi DiffChange ctermbg=234 ctermfg=60 guibg=#16171d guifg=#626983
hi DiffDelete cterm=NONE ctermbg=234 ctermfg=240 gui=NONE guibg=#1a1b20 guifg=#575861
hi DiffText cterm=NONE ctermbg=235 ctermfg=255 gui=NONE guibg=#24242c guifg=#e2e4ed
hi Directory ctermfg=60 guifg=#626983
hi Error ctermbg=233 ctermfg=146 guibg=#ff8700 guifg=#8e0900
hi ErrorMsg ctermbg=233 ctermfg=146 guibg=#ff8700 guifg=#8e0900
hi WarningMsg ctermbg=233 ctermfg=253 guibg=#0a0b04 guifg=#d3d5de
hi EndOfBuffer ctermfg=234 guifg=#1c1c22
hi NonText ctermfg=234 guifg=#1c1c22
hi Whitespace ctermfg=238 guifg=#43444d
hi Folded ctermbg=233 ctermfg=240 guibg=#111216 guifg=#575861
hi FoldColumn ctermbg=233 ctermfg=238 guibg=#0a0b04 guifg=#43444d
hi Function ctermfg=145 cterm=bold guifg=#b6bac8 gui=bold
hi Identifier cterm=NONE ctermfg=245 guifg=#868690
hi Ignore ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi Include ctermfg=60 guifg=#626983
hi IncSearch cterm=reverse ctermfg=NONE gui=reverse guifg=NONE term=reverse
hi LineNr ctermbg=233 ctermfg=240 guibg=#0a0b04 guifg=#575861
hi MatchParen ctermbg=235 ctermfg=255 guibg=#25252b guifg=#e2e4ed
hi ModeMsg ctermfg=240 guifg=#575861
hi MoreMsg ctermfg=60 guifg=#626983
hi Operator ctermfg=240 guifg=#999eb2
hi Pmenu ctermbg=233 ctermfg=245 guibg=#111216 guifg=#868690
hi PmenuSbar ctermbg=233 ctermfg=NONE guibg=#111216 guifg=NONE
hi PmenuSel ctermbg=235 ctermfg=245 guibg=#22222a guifg=#868690
hi PmenuThumb ctermbg=240 ctermfg=NONE guibg=#575861 guifg=NONE
hi PreProc ctermfg=60 guifg=#626983
hi Question ctermfg=60 guifg=#626983
hi QuickFixLine ctermbg=234 ctermfg=245 guibg=#1a1a20 guifg=#868690
hi Search ctermbg=145 ctermfg=233 guibg=#b6bac8 guifg=#0a0b04
hi SignColumn ctermbg=233 ctermfg=240 guibg=#0a0b04 guifg=#575861
hi Special ctermfg=145 guifg=#b6bac8
hi SpecialKey ctermfg=238 guifg=#43444d
hi SpellBad ctermbg=NONE ctermfg=NONE gui=undercurl guifg=NONE guisp=#999eb2
hi SpellCap ctermbg=NONE ctermfg=NONE gui=undercurl guifg=NONE guisp=#626983
hi SpellLocal ctermbg=NONE ctermfg=NONE gui=undercurl guifg=NONE guisp=#d3d5de
hi SpellRare ctermbg=NONE ctermfg=NONE gui=undercurl guifg=NONE guisp=#7c829d
" hi Statement ctermfg=60 cterm=bold gui=NONE guifg=#7c829d
hi Statement ctermfg=60 cterm=bold gui=NONE guifg=#536470
hi StatusLine cterm=reverse ctermbg=233 ctermfg=240 gui=reverse guibg=#0a0b04 guifg=#575861 term=reverse
hi StatusLineTerm cterm=reverse ctermbg=233 ctermfg=240 gui=reverse guibg=#0a0b04 guifg=#575861 term=reverse
hi StatusLineNC cterm=reverse ctermbg=233 ctermfg=238 gui=reverse guibg=#0a0b04 guifg=#43444d term=reverse
hi StatusLineTermNC cterm=reverse ctermbg=233 ctermfg=238 gui=reverse guibg=#0a0b04 guifg=#43444d term=reverse
hi StorageClass ctermfg=60 guifg=#626983
hi String ctermfg=253 guifg=#aabbc5
" hi String ctermfg=253 guifg=#506385
" hi String ctermfg=253 guifg=#c58fff
" hi String ctermfg=253 guifg=#00dd9a
hi String ctermfg=253 guifg=#7aaeee
hi Structure ctermfg=60 guifg=#626983
hi TabLine cterm=NONE ctermbg=233 ctermfg=240 gui=NONE guibg=#0a0b04 guifg=#575861
hi TabLineFill cterm=NONE ctermbg=233 ctermfg=233 gui=NONE guibg=#0a0b04 guifg=#0a0b04
hi TabLineSel cterm=NONE ctermbg=233 ctermfg=245 gui=NONE guibg=#111216 guifg=#868690
hi TermCursorNC ctermbg=240 ctermfg=245 guibg=#575861 guifg=#868690
hi Title ctermfg=103 gui=NONE guifg=#7c829d
" hi Todo ctermbg=234 ctermfg=145 guibg=#1c1d22 guifg=#ffdb01 gui=bold 
hi Todo ctermbg=234 ctermfg=145 guibg=#633806 guifg=#EF9F27 gui=bold 
" hi Type ctermfg=103 cterm=bold gui=NONE guifg=#7c829d
" hi Type ctermfg=103 cterm=bold gui=NONE guifg=#8a90ab
hi Type ctermfg=103 cterm=bold gui=NONE guifg=#536470
hi Underlined cterm=underline ctermfg=255 gui=underline guifg=#e2e4ed term=underline
hi VertSplit cterm=NONE ctermbg=233 ctermfg=233 gui=NONE guibg=#0a0b04 guifg=#111216
hi Visual ctermbg=235 ctermfg=NONE guibg=#1f1f24 guifg=NONE
hi VisualNOS ctermbg=235 ctermfg=NONE guibg=#1f1f24 guifg=NONE
hi WildMenu ctermbg=235 ctermfg=255 guibg=#22222a guifg=#e2e4ed
hi sequoiaNormalFg ctermfg=245 guifg=#868690
hi diffAdded ctermfg=103 guifg=#7c829d
hi diffRemoved ctermfg=146 guifg=#999eb2
hi ALEErrorSign ctermbg=233 ctermfg=146 guibg=#0a0b04 guifg=#999eb2
hi ALEWarningSign ctermbg=233 ctermfg=253 guibg=#0a0b04 guifg=#d3d5de
hi ALEVirtualTextError ctermfg=146 guifg=#999eb2
hi ALEVirtualTextWarning ctermfg=253 guifg=#d3d5de
hi CtrlPMode1 ctermbg=234 ctermfg=240 guibg=#1a1a20 guifg=#575861
hi EasyMotionShade ctermfg=238 guifg=#43444d
hi EasyMotionTarget ctermfg=145 guifg=#b6bac8
hi EasyMotionTarget2First ctermfg=103 guifg=#7c829d
hi EasyMotionTarget2Second ctermfg=146 guifg=#999eb2
hi GitGutterAdd ctermbg=233 ctermfg=103 guibg=#0a0b04 guifg=#4dbd9b
hi GitGutterChange ctermbg=233 ctermfg=145 guibg=#0a0b04 guifg=#ffdb01
hi GitGutterChangeDelete ctermbg=233 ctermfg=145 guibg=#0a0b04 guifg=#ff8700
hi GitGutterDelete ctermbg=233 ctermfg=146 guibg=#0a0b04 guifg=#e27878
hi gitmessengerEndOfBuffer ctermbg=233 ctermfg=238 guibg=#0a0b04 guifg=#43444d
hi gitmessengerPopupNormal ctermbg=233 ctermfg=245 guibg=#0a0b04 guifg=#868690
hi Sneak ctermbg=103 ctermfg=233 guibg=#7c829d guifg=#0a0b04
hi SneakScope ctermbg=235 ctermfg=240 guibg=#1f1f24 guifg=#575861
hi SyntasticErrorSign ctermbg=233 ctermfg=146 guibg=#0a0b04 guifg=#999eb2
hi SyntasticStyleErrorSign ctermbg=233 ctermfg=146 guibg=#0a0b04 guifg=#999eb2
hi SyntasticStyleWarningSign ctermbg=233 ctermfg=253 guibg=#0a0b04 guifg=#d3d5de
hi SyntasticWarningSign ctermbg=233 ctermfg=253 guibg=#0a0b04 guifg=#d3d5de
hi ZenSpace ctermbg=146 guibg=#999eb2
hi TSFunction ctermfg=145 guifg=#b6bac8
hi TSFunctionBuiltin ctermfg=145 guifg=#b6bac8
hi TSFunctionMacro ctermfg=145 guifg=#b6bac8
hi TSMethod ctermfg=145 guifg=#b6bac8
hi TSURI cterm=underline ctermfg=60 gui=underline guifg=#626983 term=underline
hi DiagnosticUnderlineInfo cterm=underline ctermfg=103 gui=underline guisp=#7c829d term=underline
hi DiagnosticInfo ctermfg=103 guifg=#7c829d
hi DiagnosticSignInfo ctermbg=233 ctermfg=103 guibg=#0a0b04 guifg=#7c829d
hi DiagnosticUnderlineHint cterm=underline ctermfg=240 gui=underline guisp=#575861 term=underline
hi DiagnosticHint ctermfg=240 guifg=#575861
hi DiagnosticSignHint ctermbg=233 ctermfg=240 guibg=#0a0b04 guifg=#575861
hi DiagnosticUnderlineWarn cterm=underline ctermfg=253 gui=underline guisp=#d3d5de term=underline
hi DiagnosticWarn ctermfg=253 guifg=#d3d5de
hi DiagnosticSignWarn ctermbg=233 ctermfg=253 guibg=#0a0b04 guifg=#d3d5de
hi DiagnosticUnderlineError cterm=underline ctermfg=146 gui=underline guisp=#999eb2 term=underline
hi DiagnosticError ctermfg=146 guifg=#999eb2
hi DiagnosticSignError ctermbg=233 ctermfg=146 guibg=#0a0b04 guifg=#999eb2
hi DiagnosticFloatingHint ctermbg=233 ctermfg=245 guibg=#111216 guifg=#868690
hi sequoiaAccentError ctermfg=146 guifg=#999eb2

if has('nvim')
  let g:terminal_color_0 = '#131317'
  let g:terminal_color_1 = '#999eb2'
  let g:terminal_color_2 = '#626983'
  let g:terminal_color_3 = '#d3d5de'
  let g:terminal_color_4 = '#7c829d'
  let g:terminal_color_5 = '#e2e4ed'
  let g:terminal_color_6 = '#b6bac8'
  let g:terminal_color_7 = '#868690'
  let g:terminal_color_8 = '#575861'
  let g:terminal_color_9 = '#999eb2'
  let g:terminal_color_10 = '#626983'
  let g:terminal_color_11 = '#d3d5de'
  let g:terminal_color_12 = '#7c829d'
  let g:terminal_color_13 = '#e2e4ed'
  let g:terminal_color_14 = '#b6bac8'
  let g:terminal_color_15 = '#868690'
else
  let g:terminal_ansi_colors = ['#131317', '#999eb2', '#626983', '#d3d5de', '#7c829d', '#e2e4ed', '#b6bac8', '#868690', '#575861', '#999eb2', '#626983', '#d3d5de', '#7c829d', '#e2e4ed', '#b6bac8', '#868690']
endif

" ---------------------------------------------------------------------------
" Filetype / plugin links — generic, unaffected by the palette above
" ---------------------------------------------------------------------------
hi! link TermCursor Cursor
hi! link ToolbarButton TabLineSel
hi! link ToolbarLine TabLineFill
hi! link cssBraces Delimiter
hi! link cssClassName Special
hi! link cssClassNameDot sequoiaNormalFg
hi! link cssPseudoClassId Special
hi! link cssTagName Statement
hi! link helpHyperTextJump Constant
hi! link htmlArg Constant
hi! link htmlEndTag Statement
hi! link htmlTag Statement
hi! link jsonQuote sequoiaNormalFg
hi! link phpVarSelector Identifier
hi! link pythonFunction Title
hi! link rubyDefine Statement
hi! link rubyFunction Title
hi! link rubyInterpolationDelimiter String
hi! link rubySharpBang Comment
hi! link rubyStringDelimiter String
hi! link rustFuncCall sequoiaNormalFg
hi! link rustFuncName Title
hi! link rustType Constant
hi! link sassClass Special
hi! link shFunction sequoiaNormalFg
hi! link vimContinue Comment
hi! link vimFuncSID vimFunction
hi! link vimFuncVar sequoiaNormalFg
hi! link vimFunction Title
hi! link vimGroup Statement
hi! link vimHiGroup Statement
hi! link vimHiTerm Identifier
hi! link vimMapModKey Special
hi! link vimOption Identifier
hi! link vimVar sequoiaNormalFg
hi! link xmlAttrib Constant
hi! link xmlAttribPunct Statement
hi! link xmlEndTag Statement
hi! link xmlNamespace Statement
hi! link xmlTag Statement
hi! link xmlTagName Statement
hi! link yamlKeyValueDelimiter Delimiter
hi! link CtrlPPrtCursor Cursor
hi! link CtrlPMatch Title
hi! link CtrlPMode2 StatusLine
hi! link deniteMatched sequoiaNormalFg
hi! link deniteMatchedChar Title
hi! link elixirBlockDefinition Statement
hi! link elixirDefine Statement
hi! link elixirDocSigilDelimiter String
hi! link elixirDocTest String
hi! link elixirExUnitMacro Statement
hi! link elixirExceptionDefine Statement
hi! link elixirFunctionDeclaration Title
hi! link elixirKeyword Statement
hi! link elixirModuleDeclaration sequoiaNormalFg
hi! link elixirModuleDefine Statement
hi! link elixirPrivateDefine Statement
hi! link elixirStringDelimiter String
hi! link jsFlowMaybe sequoiaNormalFg
hi! link jsFlowObject sequoiaNormalFg
hi! link jsFlowType PreProc
hi! link graphqlName sequoiaNormalFg
hi! link graphqlOperator sequoiaNormalFg
hi! link gitmessengerHash Comment
hi! link gitmessengerHeader Statement
hi! link gitmessengerHistory Constant
hi! link jsArrowFunction Operator
hi! link jsClassDefinition sequoiaNormalFg
hi! link jsClassFuncName Title
hi! link jsExport Statement
hi! link jsFuncName Title
hi! link jsFutureKeys Statement
hi! link jsFuncCall sequoiaNormalFg
hi! link jsGlobalObjects Statement
hi! link jsModuleKeywords Statement
hi! link jsModuleOperators Statement
hi! link jsNull Constant
hi! link jsObjectFuncName Title
hi! link jsObjectKey Identifier
hi! link jsSuper Statement
hi! link jsTemplateBraces Special
hi! link jsUndefined Constant
hi! link markdownBold Special
hi! link markdownCode String
hi! link markdownCodeDelimiter String
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment
hi! link ngxDirective Statement
hi! link plug1 sequoiaNormalFg
hi! link plug2 Identifier
hi! link plugDash Comment
hi! link plugMessage Special
hi! link SignifySignAdd GitGutterAdd
hi! link SignifySignChange GitGutterChange
hi! link SignifySignChangeDelete GitGutterChangeDelete
hi! link SignifySignDelete GitGutterDelete
hi! link SignifySignDeleteFirstLine SignifySignDelete
hi! link StartifyBracket Comment
hi! link StartifyFile Identifier
hi! link StartifyFooter Constant
hi! link StartifyHeader Constant
hi! link StartifyNumber Special
hi! link StartifyPath Comment
hi! link StartifySection Statement
hi! link StartifySlash Comment
hi! link StartifySpecial sequoiaNormalFg
hi! link svssBraces Delimiter
hi! link swiftIdentifier sequoiaNormalFg
hi! link TSAttribute Special
hi! link TSBoolean Constant
hi! link TSCharacter Constant
hi! link TSComment Comment
hi! link TSConstructor sequoiaNormalFg
hi! link TSConditional Statement
hi! link TSConstant Constant
hi! link TSConstBuiltin Constant
hi! link TSConstMacro Constant
hi! link TSError Error
hi! link TSException Statement
hi! link TSField sequoiaNormalFg
hi! link TSFloat Constant
hi! link TSInclude Statement
hi! link TSKeyword Statement
hi! link TSKeywordFunction Function
hi! link TSLabel Special
hi! link TSNamespace Statement
hi! link TSNumber Constant
hi! link TSOperator sequoiaNormalFg
hi! link TSParameter sequoiaNormalFg
hi! link TSParameterReference sequoiaNormalFg
hi! link TSProperty sequoiaNormalFg
hi! link TSPunctDelimiter sequoiaNormalFg
hi! link TSPunctBracket sequoiaNormalFg
hi! link TSPunctSpecial Special
hi! link TSRepeat Statement
hi! link TSString String
hi! link TSStringRegex String
hi! link TSStringEscape Special
hi! link TSTag htmlTagName
hi! link TSTagAttribute htmlArg
hi! link TSTagDelimiter htmlTagName
hi! link TSText sequoiaNormalFg
hi! link TSTitle Title
hi! link TSType Type
hi! link TSTypeBuiltin Type
hi! link TSVariable sequoiaNormalFg
hi! link TSVariableBuiltin Statement
hi! link typescriptAjaxMethods sequoiaNormalFg
hi! link typescriptBraces sequoiaNormalFg
hi! link typescriptEndColons sequoiaNormalFg
hi! link typescriptFuncKeyword Statement
hi! link typescriptGlobalObjects Statement
hi! link typescriptHtmlElemProperties sequoiaNormalFg
hi! link typescriptIdentifier Statement
hi! link typescriptMessage sequoiaNormalFg
hi! link typescriptNull Constant
hi! link typescriptParens sequoiaNormalFg

if has('nvim-0.8')
  hi! link @attribute TSAttribute
  hi! link @boolean TSBoolean
  hi! link @character TSCharacter
  hi! link @comment TSComment
  hi! link @constructor TSConstructor
  hi! link @conditional TSConditional
  hi! link @constant TSConstant
  hi! link @constant.builtin TSConstBuiltin
  hi! link @constant.macro TSConstMacro
  hi! link @error TSError
  hi! link @exception TSException
  hi! link @field TSField
  hi! link @float TSFloat
  hi! link @function TSFunction
  hi! link @function.builtin TSFunctionBuiltin
  hi! link @function.macro TSFunctionMacro
  hi! link @include TSInclude
  hi! link @keyword TSKeyword
  hi! link @keyword.function TSKeywordFunction
  hi! link @label TSLabel
  hi! link @method TSMethod
  hi! link @namespace TSNamespace
  hi! link @number TSNumber
  hi! link @operator TSOperator
  hi! link @parameter TSParameter
  hi! link @parameter.reference TSParameterReference
  hi! link @property TSProperty
  hi! link @punctuation.delimiter TSPunctDelimiter
  hi! link @punctuation.bracket TSPunctBracket
  hi! link @punctuation.special TSPunctSpecial
  hi! link @repeat TSRepeat
  hi! link @string TSString
  hi! link @string.regex TSStringRegex
  hi! link @string.escape TSStringEscape
  hi! link @tag TSTag
  hi! link @tag.attribute TSTagAttribute
  hi! link @tag.delimiter TSTagDelimiter
  hi! link @text TSText
  hi! link @text.note Todo
  hi! link @text.title TSTitle
  hi! link @text.uri TSURI
  hi! link @type TSType
  hi! link @type.builtin TSTypeBuiltin
  hi! link @variable TSVariable
  hi! link @variable.builtin TSVariableBuiltin
endif

if !has('nvim')
  hi! link SpecialKey Whitespace
endif

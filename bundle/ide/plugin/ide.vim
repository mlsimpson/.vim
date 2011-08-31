" See:  https://github.com/jwu/exvim
"
"
" --------------------
" ShowMarks
" --------------------
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let g:showmarks_enable = 1
" For marks a-z
highlight ShowMarksHLl gui=bold guibg=LightBlue guifg=Blue
" For marks A-Z
highlight ShowMarksHLu gui=bold guibg=LightRed guifg=DarkRed
" For all other marks
highlight ShowMarksHLo gui=bold guibg=LightYellow guifg=DarkYellow
" For multiple marks on the same line.
highlight ShowMarksHLm gui=bold guibg=LightGreen guifg=DarkGreen

" --------------------
" Project
" --------------------
map <Leader>proj :Project<CR>
map <Leader>reproj :Project<CR>:redraw<CR>/
nmap <silent> <Leader>tproj <Plug>ToggleProject
let g:proj_window_width = 30
let g:proj_window_increment = 50

" --------------------
" exTagSelect
" --------------------
"nnoremap <silent> <F7> :ExtsToggle<CR>
"nnoremap <silent> <Leader>ts :ExtsSelectToggle<CR>
"nnoremap <silent> <Leader>tt :ExtsStackToggle<CR>
"map <silent> <Leader>] :ExtsGoDirectly<CR>
"map <silent> <Leader>[ :PopTagStack<CR>
"let g:exTS_backto_editbuf = 0
"let g:exTS_close_when_selected = 1

" --------------------
" exGlobalSearch
" --------------------
"nnoremap <silent> <F5> :ExgsToggle<CR>
"nnoremap <silent> <Leader>gs :ExgsSelectToggle<CR>
"nnoremap <silent> <Leader>gq :ExgsQuickViewToggle<CR>
"nnoremap <silent> <Leader>gt :ExgsStackToggle<CR>
"map <S-f> :GS
"map <C-S-f> :GSW
"let g:exGS_backto_editbuf = 0
"let g:exGS_close_when_selected = 0

" --------------------
" exSymbolTable
" --------------------
"nnoremap <silent> <Leader>ss :ExslSelectToggle<CR>
"nnoremap <silent> <Leader>sq :ExslQuickViewToggle<CR>
"nnoremap <silent> <F6> :ExslToggle<CR>
"nnoremap <A-S-l> :ExslQuickSearch<CR>/^
"nnoremap <silent> <Leader>sg :ExslGoDirectly<CR>
"let g:exSL_SymbolSelectCmd = 'TS'

" --------------------
" exEnvironmentSetting
" --------------------
"function g:exES_UpdateEnvironment()
 "if exists( 'g:exES_PWD' )
 "silent exec 'cd ' . g:exES_PWD
 "endif
 "if exists( 'g:exES_Tag' )
 "let &tags = &tags . ',' . g:exES_Tag
 "endif
 "if exists( 'g:exES_Project' )
 "silent exec 'Project ' . g:exES_Project
 "endif
"endfunction

" --------------------
" TagList
" --------------------
" F4: Switch on/off TagList
nnoremap <silent> <Leader>tlist :TlistToggle<CR>
" TagListTagName - Used for tag names
highlight MyTagListTagName gui=bold guifg=Black guibg=Orange
" TagListTagScope - Used for tag scope
highlight MyTagListTagScope gui=NONE guifg=Blue
" TagListTitle - Used for tag titles
highlight MyTagListTitle gui=bold guifg=DarkRed guibg=LightGray
" TagListComment - Used for comments
highlight MyTagListComment guifg=DarkGreen
" TagListFileName - Used for filenames
highlight MyTagListFileName gui=bold guifg=Black guibg=LightBlue
let Tlist_Ctags_Cmd = 'ctags -R'
let Tlist_Show_One_File = 1 " Displaying tags for only one file~
let Tlist_Exit_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_Use_Right_Window = 1 " split to the right side of the screen
let Tlist_Sort_Type = "order" " sort by order or name
let Tlist_Display_Prototype = 0 " do not show prototypes and not tags in the taglist window.
let Tlist_Compact_Format = 1 " Remove extra information and blank lines from the taglist window.
let Tlist_GainFocus_On_ToggleOpen = 1 " Jump to taglist window on open.
let Tlist_Display_Tag_Scope = 1 " Show tag scope next to the tag name.
" let Tlist_Close_On_Select = 1 " Close the taglist window when a file or tag is selected.
let Tlist_Enable_Fold_Column = 0 " Don't Show the fold indicator column in the taglist window.
let Tlist_WinWidth = 50
" let Tlist_Ctags_Cmd = 'ctags --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++'
" very slow, so I disable this
" let Tlist_Process_File_Always = 1 " To use the :TlistShowTag and the :TlistShowPrototype commands without the taglist window and the taglist menu, you should set this variable to 1.
":TlistShowPrototype [filename] [linenumber]

" --------------------
" MiniBufExpl
" --------------------
let g:miniBufExplTabWrap = 1 " make tabs show complete (no broken on two lines)
let g:miniBufExplModSelTarget = 1 " If you use other explorers like TagList you can (As of 6.2.8) set it at 1:
let g:miniBufExplUseSingleClick = 1 " If you would like to single click on tabs rather than double clicking on them to goto the selected buffer.
let g:miniBufExplMaxSize = 1 " <max lines: defualt 0> setting this to 0 will mean the window gets as big as needed to fit all your buffers.
"let g:miniBufExplForceSyntaxEnable = 1 " There is a Vim bug that can cause buffers to show up without their highlighting. The following setting will cause MBE to
"let g:miniBufExplorerMoreThanOne = 1 " Setting this to 0 will cause the MBE window to be loaded even
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplMapWindowNavArrows = 1
"for buffers that have NOT CHANGED and are NOT VISIBLE.
highlight MBENormal guibg=LightGray guifg=DarkGray
" for buffers that HAVE CHANGED and are NOT VISIBLE
highlight MBEChanged guibg=Red guifg=DarkRed
" buffers that have NOT CHANGED and are VISIBLE
highlight MBEVisibleNormal term=bold cterm=bold gui=bold guibg=Gray guifg=Black
" buffers that have CHANGED and are VISIBLE
highlight MBEVisibleChanged term=bold cterm=bold gui=bold guibg=DarkRed guifg=Black

" --------------------
" OmniCppComplete
" --------------------
" set Ctrl+j in insert mode, like VS.Net
imap <C-j> <C-X><C-O>
" :inoremap <expr> <CR> pumvisible() ? "\<c-y>" : "\<c-g>u\<CR>"
" set completeopt as don't show menu and preview
" set completeopt=menuone
" Popup menu hightLight Group
highlight Pmenu ctermbg=13 guibg=LightGray
highlight PmenuSel ctermbg=7 guibg=DarkBlue guifg=White
highlight PmenuSbar ctermbg=7 guibg=DarkGray
highlight PmenuThumb guibg=Black
" use global scope search
let OmniCpp_GlobalScopeSearch = 1
" 0 = namespaces disabled
" 1 = search namespaces in the current buffer
" 2 = search namespaces in the current buffer and in included files
let OmniCpp_NamespaceSearch = 2
" 0 = auto
" 1 = always show all members
let OmniCpp_DisplayMode = 1
" 0 = don't show scope in abbreviation
" 1 = show scope in abbreviation and remove the last column
let OmniCpp_ShowScopeInAbbr = 0
" This option allows to display the prototype of a function in the abbreviation part of the popup menu.
" 0 = don't display prototype in abbreviation
" 1 = display prototype in abbreviation
let OmniCpp_ShowPrototypeInAbbr = 1
" This option allows to show/hide the access information ('+', '#', '-') in the popup menu.
" 0 = hide access
" 1 = show access
let OmniCpp_ShowAccess = 1
" This option can be use if you don't want to parse using namespace declarations in included files and want to add namespaces that are always used in your project.
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" Complete Behaviour
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
" When 'completeopt' does not contain "longest", Vim automatically select the first entry of the popup menu. You can change this behaviour with the OmniCpp_SelectFirstItem option.
let OmniCpp_SelectFirstItem = 0

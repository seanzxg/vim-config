" airline config
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline#extensions#nvimlsp#enabled= 0

" Undotree settings
let g:undotree_SplitWidth = 60
let g:undotree_WindowLayout = 3

" vim-cool 
let g:CoolTotalMatches = 1

" vim-floaterm
let g:floaterm_height = 0.4
let g:floaterm_rootmarkers = ['.git', '.gitignore']
let g:floaterm_autoclose = 2
let g:floaterm_width = 1.00 
let g:floaterm_position='bottom'


" ctrlsf config
let g:ctrlsf_auto_focus = {
    \ "at": "start",
    \ "duration_less_than": 1000
    \ }
let g:ctrlsf_winsize = '45%'
" inoremap <C-t> <Esc>:CtrlSFToggle<CR>
nmap <C-f> :CtrlSFToggle<CR>
let g:ctrlsf_position = 'right'
let g:ctrlsf_mapping = {
      \"open"    : ["<CR>", "o"],
      \"openb"   : "O",
      \"split"   : "s",
      \"vsplit"  : "v",
      \"tab"     : "t",
      \"tabb"    : "T",
      \"popen"   : "",
      \"popenf"  : "p",
      \"quit"    : "q",
      \"next"    : "n",
      \"prev"    : "N",
    \ }

" vim-region
map <Space> <Plug>(expand_region_expand)

" closetag config
let g:closetag_filetypes = 'html,javascript,javascriptreact,typescript,typescriptreact'
let g:closetag_regions = {
  \ 'typescriptreact': 'jsxRegion,tsxRegion',
  \ 'javascriptreact': 'jsxRegion',
  \ }
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'javascript' : 1,
    \ 'javascriptreact' : 1,
    \ 'typescript' : 1,
    \ 'typescriptreact' : 1,
    \}

" vim-root config
let g:rooter_patterns = ['src', '.git', 'package.json']
let g:rooter_silent_chdir = 1


" ==================================================================================
" tagalong config
let g:tagalong_filetypes = ['html', 'xml', 'jsx', 'eruby', 'ejs', 'eco', 'php', 'htmldjango', 'javascriptreact', 'typescriptreact', 'javascript']
let g:tagalong_verbose = 1

"  coc.nvim config
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-css',
  \ 'coc-cssmodules',
  \ 'coc-emmet',
  \ 'coc-highlight',
  \ 'coc-html',
  \ 'coc-svg',
  \ 'coc-tabnine',
  \ 'coc-snippets',
  \ 'coc-explorer',
  \ 'coc-lists',
  \ 'coc-tailwindcss',
  \ 'coc-eslint',
  \ 'coc-tslint-plugin',
  \ 'coc-fzf-preview',
  \ 'coc-pairs',
  \ 'coc-styled-components',
  \ 'coc-vetur',
  \ ]

" startify
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:webdevicons_enable_startify = 1
" function! StartifyEntryFormat()
"         return 'WebDevIconsGetFileTypeSymbol(absolute_path) ."". entry_path'
"     endfunction
let g:startify_enable_special = 0

" fzf
let g:fzf_layout = { "window": { 'width': 0.9, 'height': 0.9 } }
let g:fzf_command_prefix = 'Fzf'
let g:fzf_buffers_jump = 1
let $FZF_PREVIEW_PREVIEW_BAT_THEME = "gruvbox"

" vim-bookmark
let g:bookmark_no_default_key_mappings = 1
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1


" easymotion config
map  f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)
nmap F <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1
let g:EasyMotion_keys = 'acdefijklmnopqrsuvwyz'

" barbar.nvim
let bufferline = {}
let bufferline.shadow = v:true
let bufferline.icons = v:true
let bufferline.clickable = v:true
let bufferline.semantic_letters = v:true
let bufferline.letters = 
  \ 'asdfjklghnmxcbziowerutyqp'

let bg_current= get(nvim_get_hl_by_name('Normal', 1), 'background', '#000000')
let bg_visible= get(nvim_get_hl_by_name('TabLineSel', 1), 'background', '#000000')
let bg_inactive = get(nvim_get_hl_by_name('TabLine',   1), 'background', '#000000')

" For the current active buffer
hi default link BufferCurrent      TabLineSel
" For the current active buffer when modified
hi default link BufferCurrentMod   TabLineSel
" For the current active buffer icon
hi default link BufferCurrentSign  TabLineSel
" For the current active buffer target when buffer-picking
exe 'hi default BufferCurrentTarget   guifg=red gui=bold guibg=' . bg_current

" For buffers visible but not the current one
hi default link BufferVisible      Normal
hi default link BufferVisibleMod   Normal
hi default link BufferVisibleSign  Normal
exe 'hi default BufferVisibleTarget   guifg=red gui=bold guibg=' . bg_visible

" For buffers invisible buffers
hi default link BufferInactive     TabLine
hi default link BufferInactiveMod  TabLine
hi default link BufferInactiveSign TabLine
exe 'hi default BufferInactiveTarget   guifg=red gui=bold guibg=' . bg_inactive


" For the shadow in buffer-picking mode
hi default BufferShadow guifg=#000000 guibg=#000000

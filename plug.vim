" airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'

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
" let g:rooter_patterns = ['src', '.git', 'yarn.lock', 'package.json']
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

" easymotiono

  " easymotion config
map  \ <Plug>(easymotion-sn)
omap \ <Plug>(easymotion-tn)
map  f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)
nmap F <Plug>(easymotion-overwin-f2)
map <Leader>l <Plug>(easymotion-bd-jk)
let g:EasyMotion_smartcase = 1
let g:EasyMotion_keys = 'acdefijklmnopqrsuvwyz'

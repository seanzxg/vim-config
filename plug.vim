" ctrlp config
let g:ctrlp_map = ''
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_prompt_mappings = {
  \ 'PrtHistory(-1)':       ['<c-j>'],
  \ 'PrtHistory(1)':        ['<c-k>'],
  \ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
  \ 'PrtSelectMove("k")':   ['<c-p>', '<up>'],
  \ }
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:10'

" airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'

" Undotree settings
let g:undotree_SplitWidth = 60
let g:undotree_WindowLayout = 3

" vim-cool 
let g:CoolTotalMatches = 1

" floaterm config
" let g:floaterm_height = 34 
" let g:floaterm_rootmarkers = ['.git', '.gitignore']
" let g:floaterm_autoclose = 2
" let g:floaterm_width = 1.00 
" let g:floaterm_position = "bottom"

let g:floaterm_height = 0.4
let g:floaterm_rootmarkers = ['.git', '.gitignore']
let g:floaterm_autoclose = 2
let g:floaterm_width = 1.00 
" let g:floaterm_wintype="normal"
let g:floaterm_position='bottom'


" ctrlsf config
let g:ctrlsf_auto_focus = {
    \ "at": "start",
    \ "duration_less_than": 1000
    \ }
let g:ctrlsf_winsize = '45%'
inoremap <C-t> <Esc>:CtrlSFToggle<CR>
nnoremap <C-t> :CtrlSFToggle<CR>
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


" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

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

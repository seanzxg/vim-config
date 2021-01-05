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
" let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_height = 34 
let g:floaterm_rootmarkers = ['.git', '.gitignore']
let g:floaterm_autoclose = 2
let g:floaterm_wintype="normal"
let g:floaterm_position='bottom'

" ctrlsf config
let g:ctrlsf_auto_focus = {
    \ "at": "start",
    \ "duration_less_than": 1000
    \ }
let g:ctrlsf_winsize = '40%'
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
map <S-S> <Plug>(expand_region_shrink)

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
  \ 'coc-smartf',
  \ 'coc-lists',
  \ 'coc-git',
  \ 'coc-bookmark',
  \ 'coc-tailwindcss',
  \ 'coc-eslint',
  \ 'coc-fzf-preview',
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
let g:fzf_layout = { "window": { 'width': 0.8, 'height': 0.8 } }
let g:fzf_command_prefix = 'Fzf'

" fzf-checkout
let g:fzf_checkout_git_options = '--sort=-committerdate'
let g:fzf_branch_actions = {
      \ 'diff': {
      \   'prompt': 'Diff> ',
      \   'execute': 'Git diff {branch}',
      \   'multiple': v:false,
      \   'keymap': 'ctrl-f',
      \   'required': ['branch'],
      \   'confirm': v:false,
      \ },
      \ 'delete': {
      \   'keymap': 'ctrl-r',
      \   'confirm': v:true,
      \ },
      \}
let g:fzf_checkout_merge_settings = v:false
let g:fzf_branch_actions = {
      \ 'checkout': {
      \   'prompt': 'Checkout> ',
      \   'execute': 'echo system("{git} checkout {branch}")',
      \   'multiple': v:false,
      \   'keymap': 'enter',
      \   'required': ['branch'],
      \   'confirm': v:false,
      \ },
      \}

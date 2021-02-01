nnoremap <leader>. :source $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
" buffer
nnoremap <leader>q :BD<CR>
" window
nmap <leader>v :vsplit<cr>
nmap <leader>s :split<cr>

" undotree config
nmap <leader>u :UndotreeToggle<cr>
let g:floaterm_keymap_toggle = '<leader>\'
let g:floaterm_keymap_new    = '<F6>'
let g:floaterm_keymap_prev   = '<F7>'
let g:floaterm_keymap_next   = '<F8>'
" 重命名
nmap <leader>r <Plug>(coc-rename)
" Remap keys for applying codeAction to the current buffer.
nmap <leader>a  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>`  <Plug>(coc-fix-current)
" Replace all of current word
nnoremap <leader>w :%s/\<<C-r><C-w>\>//g<left><left>
 " coc.nvim
" nmap <leader>f <Plug>(coc-refactor)
" nmap <leader>a <Plug>(coc-codelens-action)
xmap <leader>x  <Plug>(coc-convert-snippet)
nmap <leader>d  <Plug>(coc-diagnostic-info)

" list 
" nnoremap <silent> \r  :<C-u>CocList -N mru -A<cr>
nnoremap <silent><nowait> <leader>cs  :<C-u>CocList snippets<cr>
nnoremap <silent><nowait> <leader>cq  :<C-u>CocList quickfix<CR>
nnoremap <silent><nowait> <leader>cd  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <leader>ce  :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <leader>cb  :<C-u>CocList bookmark<cr>
nnoremap <silent><nowait> <leader>cc  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <leader>cm  :<C-u>CocList mru<cr>
nnoremap <silent><nowait> <leader>cf  :<C-u>CocList files<cr>
nnoremap <silent><nowait> <leader>cn  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <leader>cp  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <leader>cr  :<C-u>CocListResume<CR>

"fzf ,f+name
" key f
nmap <Leader>f [fzf-p]
xmap <Leader>f [fzf-p]
nnoremap <leader>fc :FzfCommands<CR>
nnoremap <leader>fa :<C-u>FzfAg<CR>
nnoremap <leader>fw :<C-u>FzfWindows<CR>
nnoremap <silent> <leader>gh    :<C-u>FzfCommits<CR>
nnoremap <silent> [fzf-p]f     :<C-u>CocCommand fzf-preview.ProjectFiles<CR>
nnoremap <silent> [fzf-p]m     :<C-u>CocCommand fzf-preview.Bookmarks<CR>
nnoremap          [fzf-p]g     :<C-u>CocCommand fzf-preview.ProjectGrep<Space>
xnoremap          [fzf-p]g     "sy:CocCommand   fzf-preview.ProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
nnoremap <silent> [fzf-p]b     :<C-u>CocCommand fzf-preview.Buffers<CR>
nnoremap <silent> [fzf-p]B     :<C-u>CocCommand fzf-preview.AllBuffers<CR>
nnoremap <silent> [fzf-p]p     :<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>
nnoremap <silent> [fzf-p]j     :<C-u>CocCommand fzf-preview.Jumps<CR>
nnoremap <silent> [fzf-p]c     :<C-u>CocCommand fzf-preview.Changes<CR>
nnoremap <silent> [fzf-p]d     :<C-u>CocCommand fzf-preview.CocDiagnostics<CR>
nnoremap <silent> [fzf-p]i     :<C-u>CocCommand fzf-preview.CocTypeDefinitions<CR>

" key g
nnoremap <silent> <leader>gs    :<C-u>CocCommand fzf-preview.GitStatus<CR>
nnoremap <silent> <leader>gg    :<C-u>CocCommand fzf-preview.GitActions<CR>

" nmap <leader>gf :G<CR>
" nmap <leader>gh :diffget //3<CR>
" nmap <leader>gl :diffget //2<CR>

" vim-bookmarks
nmap <Leader>mm <Plug>BookmarkToggle
nmap <Leader>mi <Plug>BookmarkAnnotate
nmap <Leader>ma <Plug>BookmarkShowAll
nmap <Leader>mc <Plug>BookmarkClear
nmap <Leader>mx <Plug>BookmarkClearAll


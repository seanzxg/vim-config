" buffer
nnoremap <leader>q :bd<CR>
nmap <leader>sv :vsplit<cr>
nmap <leader>ss :split<cr>
" Fugitive config
nmap <leader>gb :Gblame<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gg :Ggrep
nmap <leader>gh :Glog<cr>
nmap <leader>gl :Git pull<cr>
nmap <leader>gp :Git push<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gw :Gbrowse<cr>
nmap <leader>g? :map <leader>g<cr>
" undotree config
nmap <leader>u :UndotreeToggle<cr>
let g:floaterm_keymap_toggle = '<leader>\'
" 重命名
nmap <leader>r <Plug>(coc-rename)
" Remap keys for applying codeAction to the current buffer.
nmap <leader>a  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>`  <Plug>(coc-fix-current)



  " Replace all of current word
  nnoremap <leader>s :%s/\<<C-r><C-w>\>//g<left><left>
   " coc.nvim
  nmap <leader>x  <Plug>(coc-cursors-operator)
  nmap <leader>rn <Plug>(coc-rename)
  nmap <leader>rf <Plug>(coc-refactor)
  nmap <leader>ca <Plug>(coc-codelens-action)
  xmap <leader>x  <Plug>(coc-convert-snippet)
  xmap <leader>f  <Plug>(coc-format-selected)
  nmap <leader>f  <Plug>(coc-format-selected)
  xmap <leader>a  <Plug>(coc-codeaction-selected)
  nmap <leader>a  <Plug>(coc-codeaction-selected)
  nmap <leader>ac <Plug>(coc-codeaction-line)
  nmap <leader>af <Plug>(coc-codeaction)
  nmap <leader>di <Plug>(coc-diagnostic-info)
  nmap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>
  nmap <leader>dr <Plug>(iagnostic-related)
  nmap <leader>ms <Plug>(coc-menu-show)
  nmap <silent> <Leader>tr <Plug>(coc-translator-p)

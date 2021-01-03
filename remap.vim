
" basic ********************************
inoremap jj <ESC>
noremap H 0
noremap L $
noremap Y y$
noremap 0 ^
noremap m `.
" 新旧位置切换
nnoremap <silent> ( g;
nnoremap <silent> ) g,
noremap j gj
noremap k gk
nnoremap U <C-r>
vnoremap < <gv
vnoremap > >gv
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" 用 m/M 来切换buffer
noremap t :bn<CR>
noremap T :bp<CR>
" Map Ctrl+V to paste in Insert mode
inoremap <C-v> <C-o>"+]p
xnoremap <C-c> "+y
"用默认寄存器替换当前选定的文本，而不将其隐藏
vnoremap p "_dP
" some shortcut for git
nnoremap gci :Gcommit -v<CR>
nnoremap gca :Gcommit -a -v<CR>
nnoremap gcc :Gcommit -v -- <C-R>=expand('%')<CR><CR>
nnoremap gp :CocCommand git.push<CR>

"Smart way to move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

" insert mode ********************************
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-l> <Right>
inoremap <C-o> <Esc>o
inoremap <C-i> <Esc>O
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-u> <C-G>u<C-U>

" command line mode ********************************
cnoremap w!! w !sudo tee % >/dev/null:
cnoremap <C-b> <S-Left>
cnoremap <C-f> <S-Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
cnoremap <C-t> <C-R>=expand("%:p:h") . "/" <CR>

" plugin  ********************************

" coc.nvim
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
" tab 语法提示
inoremap <silent><expr> <TAB>
  \ pumvisible() ? coc#_select_confirm() :
  \ coc#expandableOrJumpable() ?
  \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
				\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
vmap <C-j> <Plug>(coc-snippets-select)
imap <C-j> <Plug>(coc-snippets-expand-jump)
"smartf
nmap f <Plug>(coc-smartf-forward)
nmap F <Plug>(coc-smartf-backward)

"  选择区块
nmap <silent> <cr> <Plug>(coc-range-select)
xmap <silent> <cr> <Plug>(coc-range-select)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nmap <silent> <C-a> :call CocAction('runCommand', 'document.renameCurrentWord')<CR>
nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

" bookmark
nmap ]b <Plug>(coc-bookmark-next)
nmap [b <Plug>(coc-bookmark-prev)

" git
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" navigate conflicts of current buffer
nmap [c <Plug>(coc-git-prevconflict)
nmap ]c <Plug>(coc-git-nextconflict)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gc <Plug>(coc-git-commit)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)

" visual search ******************************************
"  In visual mode when you press * or # to search for the current selection
xnoremap    <silent> * :call <SID>visualSearch('f')<CR>
xnoremap    <silent> # :call <SID>visualSearch('b')<CR>

function! s:visualSearch(direction)
  let       l:saved_reg = @"
  execute   'normal! vgvy'
  let       l:pattern = escape(@", '\\/.*$^~[]')
  let       l:pattern = substitute(l:pattern, "\n$", '', '')
  if        a:direction ==# 'b'
    execute 'normal! ?' . l:pattern . "\<cr>"
  elseif    a:direction ==# 'f'
    execute 'normal! /' . l:pattern . '^M'
  endif
  let       @/ = l:pattern
  let       @" = l:saved_reg
endfunction

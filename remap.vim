
" basic ********************************
inoremap jj <ESC>
noremap H 0
noremap L $
noremap Y y$
noremap 0 ^
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
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-l> <Right>
inoremap <C-o> <Esc>o
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-u> <C-G>u<C-U>

" command line mode ********************************
cnoremap w!! w !sudo tee % >/dev/null:
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-j> <Left>
cnoremap <C-k> <Right>
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

" list 
nnoremap <silent> \r  :<C-u>CocList -N mru -A<cr>
nnoremap <silent><nowait> <space>h  :<C-u>CocList helptags<cr>
nnoremap <silent><nowait> <space>g  :<C-u>CocList gstatus<CR>
nnoremap <silent><nowait> <space>t  :<C-u>CocList buffers<cr>
nnoremap <silent><nowait> <space>y  :<C-u>CocList yank<cr>
nnoremap <silent><nowait> <space>u  :<C-u>CocList snippets<cr>
nnoremap <silent><nowait> <space>w  :exe 'CocList -A -I --normal --input='.expand('<cword>').' words -w'<CR>
nnoremap <silent><nowait> <space>l  :<C-u>CocList -I --ignore-case lines<CR>
nnoremap <silent><nowait> <space>q  :<C-u>CocList quickfix<CR>
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <space>s  :<C-u>CocList symbols<cr>
nnoremap <silent><nowait> <space>r  :<C-u>CocList mru<cr>
nnoremap <silent><nowait> <space>f  :<C-u>CocList files<cr>
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

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










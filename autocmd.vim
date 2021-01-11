augroup common
  autocmd!
  autocmd BufReadPost *.log normal! G
  autocmd BufWinEnter * call s:OnBufEnter()
  autocmd ColorScheme * call s:my_bookmark_color()
  autocmd FileType * call s:OnFileType(expand('<amatch>'))
  " 文件树打开的时候，调用fzf不在文件树的buffer打开
  autocmd BufEnter * if bufname('#') =~ 'coc-explorer' && bufname('%') !~ 'coc-explorer' && winnr('$') > 1 | b# | exe "normal! \<c-w>\<c-w>" | :blast | endif
  " Highlight the symbol and its references when holding the cursor.
  autocmd CursorHold * silent call CocActionAsync('highlight')
  " :set autochdir
  " 重新打开文件,回到上次鼠标悬停的位置
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  " 自动改变当前项目的目录
  " autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif

  autocmd VimEnter * sil! au! FileExplorer *
  autocmd BufEnter * let d = expand('%') | if isdirectory(d) | bd | exe 'CocCommand explorer ' . d | endif
  " Explorer
  autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
  " smartf
  autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#cc241d
  autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#504945
  " fzf
  autocmd User fzf_preview#rpc#initialized call s:fzf_preview_settings() " fzf_preview#remote#initialized or fzf_preview#coc#initialized
augroup END

function! EmptyBuffer()
  if @% ==# ""
    setfiletype txt
  endif
endfunction

function! s:OnFileType(filetype)
  if index(['xml', 'wxml', 'html', 'wxss', 'css', 'scss', 'less'], a:filetype) >=0
    let b:coc_additional_keywords = ['-']
  endif
endfunction

function! s:OnBufEnter()
  let name = bufname(+expand('<abuf>'))
  " quickly leave those temporary buffers
  if &previewwindow || name =~# '^term://' || &buftype ==# 'nofile' || &buftype ==# 'help'
    if !mapcheck('q', 'n')
      nnoremap <silent><buffer> q :<C-U>bd!<CR>
    endif
  elseif name =~# '/tmp/'
    setl bufhidden=delete
  endif
  unlet name
endfunction
" }}

function! s:my_bookmark_color() abort
  let s:scl_guibg = matchstr(execute('hi SignColumn'), 'guibg=\zs\S*')
  if empty(s:scl_guibg)
    let s:scl_guibg = 'NONE'
  endif
  exe 'hi MyBookmarkSign guifg=' . s:scl_guibg
endfunction
call s:my_bookmark_color() " don't remove this line!


function! s:fzf_preview_settings() abort
  let g:fzf_preview_command = 'COLORTERM=truecolor ' . g:fzf_preview_command
  let g:fzf_preview_grep_preview_cmd = 'COLORTERM=truecolor ' . g:fzf_preview_grep_preview_cmd
endfunction

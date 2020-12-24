augroup common
  autocmd!
  autocmd BufReadPost *.log normal! G
  autocmd BufWinEnter * call s:OnBufEnter()
  autocmd ColorScheme * call s:Highlight()
  autocmd FileType * call s:OnFileType(expand('<amatch>'))
  " Highlight the symbol and its references when holding the cursor.
  autocmd CursorHold * silent call CocActionAsync('highlight')
  " :set autochdir
  " 重新打开文件,回到上次鼠标悬停的位置
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  " 自动改变当前项目的目录
  autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif
  autocmd VimEnter * sil! au! FileExplorer *
  autocmd BufEnter * let d = expand('%') | if isdirectory(d) | bd | exe 'CocCommand explorer ' . d | endif
  " Explorer
  autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
  " smartf
  autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#cc241d
  autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#504945
augroup END

function! EmptyBuffer()
  if @% ==# ""
    setfiletype txt
  endif
endfunction

function! s:Highlight() abort
  if !has('gui_running') | hi normal guibg=NONE | endif
  call matchadd('ColorColumn', '\%81v', 100)
  hi ColorColumn ctermbg=magenta ctermfg=0 guibg=#333333
  hi HighlightedyankRegion term=bold ctermbg=0 guibg=#13354A
  hi CocCursorRange guibg=#b16286 guifg=#ebdbb2
  hi CursorLineNr  ctermfg=214 ctermbg=NONE guifg=#fabd2f guibg=NONE
  hi CocErrorFloat   guifg=#fb4934 guibg=#504945
  hi CocWarningFloat guifg=#fabd2f guibg=#504945
  hi CocInfoFloat    guifg=#d3869b guibg=#504945
  hi CocHintFloat    guifg=#83a598 guibg=#504945
  hi CocMenuSel      ctermbg=237 guibg=#504945
  hi link CocErrorSign    GruvboxRedSign
  hi link CocWarningSign  GruvboxYellowSign
  hi link CocInfoSign     GruvboxPurpleSign
  hi link CocHintSign     GruvboxBlueSign
  hi link CocFloating     Pmenu
  hi link MsgSeparator    MoreMsg
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

function! s:CloseOthers() abort
  if exists('g:coc_last_float_win')
    for i in range(1, winnr('$'))
      if getwinvar(i, 'float')
        let winid = win_getid(i)
        if winid != g:coc_last_float_win
          call coc#util#close_win(winid)
        endif
      endif
    endfor
  endif
endfunction

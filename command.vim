command! -nargs=0 Format :call CocAction('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile

command! -nargs=0 Mouse                                :call     s:ToggleMouse()
command! -nargs=0 Tslint                               :call     CocAction('runCommand', 'tslint.lintProject')
command! -nargs=0 Prettier                             :call     CocAction('runCommand', 'prettier.formatFile')

function! s:ToggleMouse()
  if empty(&mouse)
    set mouse=a
  else
    set mouse=
  endif
endfunction


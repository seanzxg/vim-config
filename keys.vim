
let g:which_key_timeout = 100
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}
nnoremap <silent> <Space> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <Space> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
let g:which_key_map =  {}
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


let g:which_key_map.w = {
      \ 'name' : '+windows' ,
      \ 'o' : ['<C-W>o'     , 'only']          ,
      \ 'c' : ['<C-W>c'     , 'close']         ,
      \ 's' : ['<C-W>s'     , 'split']    ,
      \ 'v' : ['<C-W>v'     , 'vertical']    ,
      \ 'H' : ['<C-W>5<'    , 'expand left 5']    ,
      \ 'J' : [':resize +5'  , 'expand bottom 5']   ,
      \ 'L' : ['<C-W>5>'    , 'expand right 5']   ,
      \ 'K' : [':resize -5'  , 'expand top 5']      ,
      \ 'e' : ['<C-W>='     , 'equal']        ,
      \ 'w' : ['FzfWindows'    , 'fzf windows']            ,
      \ }
" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : [':BufferGoto 1'          , 'buffer 1'],
      \ '2' : [':BufferGoto 2'          , 'buffer 2'],
      \ '3' : [':BufferGoto 3'          , 'buffer 3'],
      \ '4' : [':BufferGoto 4'          , 'buffer 4'],
      \ '5' : [':BufferGoto 5'          , 'buffer 5'],
      \ '6' : [':BufferGoto 6'          , 'buffer 6'],
      \ '7' : [':BufferGoto 7'          , 'buffer 7'],
      \ '8' : [':BufferGoto 8'          , 'buffer 8'],
      \ '9' : [':BufferGoto 9'          , 'buffer 9'],
      \ '0' : [':BufferGoto 0'          , 'buffer 0'],
      \ 'f' : ['bfirst'                 , 'first-buffer'],
      \ 'l' : ['blast'                 , 'last buffer'],
      \ 'p' : [':BufferPick'            , 'pick buffer'],
      \ 'd' : [':Bdelete'               , 'delete-buffer'],
      \ 'c' : [':BufferCloseAllButCurrent', 'close all but current'],
      \ 'h' : [':BufferCloseBuffersLeft', 'close buuffers left'],
      \ 'r' : [':BufferCloseBuffersRight', 'close buuffers right'],
      \ 'j' : [':BufferOrderByDirectory', 'order by directory'],
      \ 'k' : [':BufferOrderByLanguage' , 'order by language'],
      \ '?' : ['FzfBuffers'                , 'fzf-buffer'],
      \ }
 
call which_key#register('<Space>', "g:which_key_map")


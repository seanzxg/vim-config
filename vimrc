call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'alvan/vim-closetag'
Plug 'valloric/matchtagalways'
Plug 'andrewradev/tagalong.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'easymotion/vim-easymotion'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-commentary'
Plug 'mbbill/undotree'
Plug 'terryma/vim-expand-region'
Plug 'dyng/ctrlsf.vim'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-repeat'
Plug 'mhinz/vim-startify'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'vim-china/vimdoc-cn'
Plug 'romainl/vim-cool'
Plug 'cristianoliveira/vim-react-html-snippets'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release/rpc' }
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

Plug 'liuchengxu/vim-which-key'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'




call plug#end()
filetype plugin on
syntax on

let mapleader=","
" vimrc files
for s:path in split(glob('~/vim-config/*.vim'), "\n")
  exe 'source ' . s:path
endfor

" 二进制网站
" http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20

let g:startify_custom_header = [
        \'    ██╗   ██╗██╗███╗   ███╗███╗   ███╗███████╗██████╗     ██╗  ██╗ ██████╗ ',
        \'    ██║   ██║██║████╗ ████║████╗ ████║██╔════╝██╔══██╗    ╚██╗██╔╝██╔════╝ ',
        \'    ██║   ██║██║██╔████╔██║██╔████╔██║█████╗  ██████╔╝     ╚███╔╝ ██║  ███╗',
        \'    ╚██╗ ██╔╝██║██║╚██╔╝██║██║╚██╔╝██║██╔══╝  ██╔══██╗     ██╔██╗ ██║   ██║',
        \'     ╚████╔╝ ██║██║ ╚═╝ ██║██║ ╚═╝ ██║███████╗██║  ██║    ██╔╝ ██╗╚██████╔╝',
        \'      ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝ ',
        \]
let g:startify_commands = [
        \ ':help',
        \ ]
let g:startify_bookmarks = [
            \ { 'ap': '~/work/kuaishou-frontend-ad-alliance-promoter' },
            \ { 'ss': '~/work/kuaishou-frontend-ad-ssp' },
            \ { 'so': '~/work/kuaishou-frontend-ad-ssp-operation' },
            \ { 'ui': '~/work/r-ui' },
            \ { 'gd': '~/work/gitdemo' },
            \ { 'c': '~/vim-config/vimrc' },
            \ { 'z': '~/.zshrc' },
            \ ]
let g:startify_session_dir = '~/.vim/sessions'
let g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Projects']      },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]
let g:startify_custom_footer =
           \ ['', "    welcome to sean home. remember keys",
           \"    e:  creates an empty buffer",
           \"    i:  creates an empty buffer and jumps into insert mode",
           \"    q:  quits either the buffer or, if there is no other listed buffer left, Vim itself.",
           \"    s:  open in split",
           \"    v:  open in vertical split",
           \"    t:  open in tab",
           \ '']










" Timeout
let g:which_key_timeout = 100

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

nnoremap <silent> <Space> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <Space> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
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
      \ '>' : [':BufferMoveNext'        , 'move next'],
      \ '<' : [':BufferMovePrevious'    , 'move prev'],
      \ 'b' : [':BufferPick'            , 'pick buffer'],
      \ 'd' : [':Bdelete'               , 'delete-buffer'],
      \ 'D' : [':BufferOrderByDirectory', 'order by directory'],
      \ 'f' : ['bfirst'                 , 'first-buffer'],
      \ 'l' : ['blast'                 , 'last buffer'],
      \ 'L' : [':BufferOrderByLanguage' , 'order by language'],
      \ 'n' : ['bnext'                  , 'next-buffer'],
      \ 'p' : ['bprevious'              , 'previous-buffer'],
      \ '?' : ['FzfBuffers'                , 'fzf-buffer'],
      \ }
 
call which_key#register('<Space>', "g:which_key_map")







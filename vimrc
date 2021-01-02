call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'cristianoliveira/vim-react-html-snippets'
Plug 'honza/vim-snippets'
Plug 'alvan/vim-closetag'
Plug 'valloric/matchtagalways'
Plug 'andrewradev/tagalong.vim'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'maxmellon/vim-jsx-pretty'
Plug 'mxw/vim-jsx'
Plug 'ianks/vim-tsx'

Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'terryma/vim-expand-region'
Plug 'dyng/ctrlsf.vim'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-repeat'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'mhinz/vim-startify'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-line'
Plug 'vim-china/vimdoc-cn'
Plug 'romainl/vim-cool'
Plug 'ryanoasis/vim-devicons'
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
        \'    ██████╗ ███████╗    ██╗    ██╗██╗████████╗██╗  ██╗    ██╗   ██╗ ██████╗ ██╗   ██╗',
        \'    ██╔══██╗██╔════╝    ██║    ██║██║╚══██╔══╝██║  ██║    ╚██╗ ██╔╝██╔═══██╗██║   ██║',
        \'    ██████╔╝█████╗      ██║ █╗ ██║██║   ██║   ███████║     ╚████╔╝ ██║   ██║██║   ██║',
        \'    ██╔══██╗██╔══╝      ██║███╗██║██║   ██║   ██╔══██║      ╚██╔╝  ██║   ██║██║   ██║',
        \'    ██████╔╝███████╗    ╚███╔███╔╝██║   ██║   ██║  ██║       ██║   ╚██████╔╝╚██████╔╝',
        \'    ╚═════╝ ╚══════╝     ╚══╝╚══╝ ╚═╝   ╚═╝   ╚═╝  ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ',
        \]
let g:startify_commands = [
        \ ':help',
        \ ]
let g:startify_bookmarks = [
            \ { 'ap': '~/work/kuaishou-frontend-ad-alliance-promoter' },
            \ { 'ss': '~/work/kuaishou-frontend-ad-ssp' },
            \ { 'so': '~/work/kuaishou-frontend-ad-ssp-operation' },
            \ { 'ui': '~/work/r-ui' },
            \ { 'c': '~/vim-config/vimrc' },
            \ { 'z': '~/.zshrc' },
            \ ]
let g:startify_session_dir = '~/.config/nvim/session'
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

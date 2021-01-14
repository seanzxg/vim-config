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
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'terryma/vim-expand-region'
Plug 'dyng/ctrlsf.vim'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-repeat'
" Plug 'terryma/vim-multiple-cursors'
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
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

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
            \ { 'gd': '~/work/gitdemo' },
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

if !has("nvim")
let macvim_skip_colorscheme=1
set bg=dark                     "设置背景为黑色
set guifont=Hack\ Nerd\ Font:h15         "设置字体和字的大小
set guioptions=                 "去掉两边的scrollbar


" vim insert光标处理
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set ttimeout
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set ttyfast
" vim 处理命令按键的方式
set termwinkey=<C-l>
tnoremap  < Esc >  < C - \ > < C - n >

" 解决vim/macvim下 命令行缓存问题
" https://www.reddit.com/r/vim/comments/fwedfx/ignore_e947_job_still_running_in_buffer_bash_when/
autocmd QuitPre * call <sid>TermForceCloseAll()
function! s:TermForceCloseAll() abort
    let term_bufs = filter(range(1, bufnr('$')), 'getbufvar(v:val, "&buftype") == "terminal"')
    for t in term_bufs
            execute "bd! " t
    endfor
endfunction
endif

if has('gui_macvim')
" macvim 设置node path
let g:coc_node_path = '/Users/sean/.nvm/versions/node/v12.10.0/bin//node'
let g:floaterm_keymap_toggle = '<D-j>'
endif
let &t_TI = ""
let &t_TE = ""

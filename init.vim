let mapleader=","

if filereadable(expand("~/vim-config/basic.vim"))
  source ~/vim-config/basic.vim 
endif

if filereadable(expand("~/vim-config/plug.vim"))
  source ~/vim-config/plug.vim 
endif

if filereadable(expand("~/vim-config/conf.vim"))
  source ~/vim-config/conf.vim 
endif

" ==================================================================================
" self config
inoremap jj <ESC>
" 定义快捷键到行首和行尾
noremap H 0
noremap L $
noremap Y y$

" 重定义0作为第一个字符
noremap 0 ^
" 新旧位置切换
nnoremap <silent> ( g;
nnoremap <silent> ) g,
"用默认寄存器替换当前选定的文本，而不将其隐藏
vnoremap p "_dP

noremap j gj
noremap k gk

" 命令行的快捷键
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" insert 模式下的编辑快捷键
inoremap <C-o> <Esc>o
inoremap <C-a> <Home>
inoremap <C-e> <End>
" 上下左右
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-l> <Right>

"Smart way to move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

" remap U to <C-r> for easier redo
nnoremap U <C-r>

"" Vmap for maintain Visual Mode after shifting > and <
vnoremap < <gv
vnoremap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>

" buffer
nnoremap <leader>q :bd<CR>

" 用 m/M 来切换buffer
noremap t :bn<CR>
noremap T :bp<CR>

" Split the window using some nice shortcuts
nmap <leader>sv :vsplit<cr>
nmap <leader>ss :split<cr>

" Map Ctrl+V to paste in Insert mode
imap <C-V> <C-R>*
nmap <leader>p "+p
" Map Ctrl+C to copy in Visual mode
vmap <C-C> "+y

"===================================================================================
"  theme color
colorscheme gruvbox

" 二进制网站
" http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20
let g:startify_custom_header = [
        \'██████╗ ███████╗    ██╗    ██╗██╗████████╗██╗  ██╗    ██╗   ██╗ ██████╗ ██╗   ██╗',
        \'██╔══██╗██╔════╝    ██║    ██║██║╚══██╔══╝██║  ██║    ╚██╗ ██╔╝██╔═══██╗██║   ██║',
        \'██████╔╝█████╗      ██║ █╗ ██║██║   ██║   ███████║     ╚████╔╝ ██║   ██║██║   ██║',
        \'██╔══██╗██╔══╝      ██║███╗██║██║   ██║   ██╔══██║      ╚██╔╝  ██║   ██║██║   ██║',
        \'██████╔╝███████╗    ╚███╔███╔╝██║   ██║   ██║  ██║       ██║   ╚██████╔╝╚██████╔╝',
        \'╚═════╝ ╚══════╝     ╚══╝╚══╝ ╚═╝   ╚═╝   ╚═╝  ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ',
        \]
let g:startify_commands = [
        \ ':help',
        \ ]
let g:startify_bookmarks = [
            \ { 'c': '~/.config/nvim/init.vim' },
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
           \ ['', "    welcome to home. remember keys", 
           \"    e:  creates an empty buffer",
           \"    i:  creates an empty buffer and jumps into insert mode",
           \"    q:  quits either the buffer or, if there is no other listed buffer left, Vim itself.",
           \"    s:  open in split",
           \"    v:  open in vertical split",
           \"    t:  open in tab",
           \ '']

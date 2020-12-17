call plug#begin()

" 样式
Plug 'vim-airline/vim-airline'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'
" 研发
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'cristianoliveira/vim-react-html-snippets'
Plug 'honza/vim-snippets'

Plug 'alvan/vim-closetag'
Plug 'valloric/matchtagalways'
Plug 'andrewradev/tagalong.vim'

Plug 'HerringtonDarkholme/yats.vim'
" or Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

" terminal
Plug 'voldikss/vim-floaterm'

" 效率工具
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'scrooloose/nerdtree'
Plug 'mbbill/undotree'
Plug 'terryma/vim-expand-region'
Plug 'dyng/ctrlsf.vim'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-repeat'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'jiangmiao/auto-pairs'




" 基础支持
Plug 'vim-china/vimdoc-cn'

Plug 'kana/vim-textobj-user'
" e
Plug 'kana/vim-textobj-entire'
" l
Plug 'kana/vim-textobj-line'
" c
Plug 'jasonlong/vim-textobj-css'
" x
Plug 'whatyouhide/vim-textobj-xmlattr'
" k v
Plug 'vimtaku/vim-textobj-keyvalue'

call plug#end()
" ==================================================================================
" self config
let mapleader=","
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

" global

" Split the window using some nice shortcuts
nmap <leader>sv :vsplit<cr>
nmap <leader>ss :split<cr>

" Unhighlight the last search pattern on Enter
" nn <silent> <cr> :nohlsearch<cr><cr>

" Map Ctrl+V to paste in Insert mode
imap <C-V> <C-R>*
nmap <C-V> "+p

" Map Ctrl+C to copy in Visual mode
vmap <C-C> "+y

" Ignore some defaults
set wildignore=*.o,*.obj,*~,*.pyc
set wildignore+=.env
set wildignore+=.env[0-9]+
set wildignore+=.git,.gitkeep
set wildignore+=.tmp
set wildignore+=.coverage
set wildignore+=*DS_Store*
set wildignore+=.sass-cache/
set wildignore+=__pycache__/
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=.tox/**
set wildignore+=.idea/**
set wildignore+=*.egg,*.egg-info
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**
set wildignore+=*/.nx/**,*.app



"===================================================================================
"  vim base config
set relativenumber
set smarttab
set cindent
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
" set cursorline
" set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 禁止折行
set nowrap
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=2
" 设置格式化时制表符占用空格数
set shiftwidth=2
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=2
" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
" za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠。效果如下

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
" set wildchar=<Tab> wildmenu wildmode=full
" 剪切板
" set clipboard=unnamed

set history=100
" 允许删除tab，line，超出start的插入
set backspace=indent,eol,start
" Show the current command at the bottom
set showcmd
" Disable beeping and flashing.
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
" Turn on persistent undo
" Thanks, Mr Wadsten: github.com/mikewadsten/dotfiles/
if has('persistent_undo')
    set undodir=~/.vim/undo//
    set undofile
    set undolevels=1000
    set undoreload=10000
endif

" Use backups
" Source:
"   http://stackoverflow.com/a/15317146
set backup
set writebackup
set backupdir=~/.vim/backup//


" Use a specified swap folder
" Source:
"   http://stackoverflow.com/a/15317146
set directory=~/.vim/swap//


" Always show the last line
set display+=lastline

" UTF-8 THIS SHITTTTTT
set encoding=utf-8
" set helplang=cn

" Automatically re-read the file if it has changed
set autoread

" Off on start
set nofoldenable

" Indent seems to work the best
set foldmethod=indent
set foldlevel=20

" :set autochdir


"===================================================================================
"  theme color
colorscheme gruvbox


" 自动改变当前项目的目录
autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif

"===================================================================================
"  coc.nvim config

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-css',
  \ 'coc-cssmodules',
  \ 'coc-emmet',
  \ 'coc-highlight',
  \ 'coc-html',
  \ 'coc-svg',
  \ 'coc-tabnine',
  \ 'coc-snippets',
  \ ]

" 不设置文本编辑失效
set hidden

" 有些服务会因为backup文件失效
set nobackup
set nowritebackup

" 为显示消息展示更多空间
set cmdheight=2

" 使用更长的updatetime(默认是4000 ms = 4 s)会导致明显的“延迟和糟糕的用户体验”。
set updatetime=300

" 不要讲消息传递给 ins-completion-menu
set shortmess+=c

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> <C-i> <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
" 使用K展示预览文档
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
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" 重命名
nmap <leader>r <Plug>(coc-rename)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>a  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>`  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')


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

" let g:coc_snippet_next = '<tab>'

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
				\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

vmap <C-j> <Plug>(coc-snippets-select)
imap <C-j> <Plug>(coc-snippets-expand-jump)


" ==================================================================================
" nerdcommenter config

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1


" ==================================================================================
" ctrlp config
let g:ctrlp_map = ''
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:ctrlp_prompt_mappings = {
  \ 'PrtHistory(-1)':       ['<c-j>'],
  \ 'PrtHistory(1)':        ['<c-k>'],
  \ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
  \ 'PrtSelectMove("k")':   ['<c-p>', '<up>'],
  \ }

" let g:ctrlp_map = ''
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:10'

" CtrlP auto cache clearing.
" ----------------------------------------------------------------------------
function! SetupCtrlP()
  if exists("g:loaded_ctrlp") && g:loaded_ctrlp
    augroup CtrlPExtension
      autocmd!
      autocmd FocusGained  * CtrlPClearCache
      autocmd BufWritePost * CtrlPClearCache
    augroup END
  endif
endfunction
if has("autocmd")
  autocmd VimEnter * :call SetupCtrlP()
endif

" ==================================================================================
" nerdtree config

let g:NERDTreeIgnore = ['^node_modules$']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinPos = "right"

" ==================================================================================
" airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" ==================================================================================
" easymotion config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map \ <Plug>(easymotion-bd-w)
map  f <Plug>(easymotion-bd-f)
map <Leader>l <Plug>(easymotion-bd-jk)

let g:EasyMotion_smartcase = 1
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'

" ==================================================================================
" Fugitive config
nmap <leader>gb :Gblame<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gg :Ggrep
nmap <leader>gh :Glog<cr>
nmap <leader>gl :Git pull<cr>
nmap <leader>gp :Git push<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gw :Gbrowse<cr>
nmap <leader>g? :map <leader>g<cr>


" ==================================================================================
" undotree config
nmap <leader>u :UndotreeToggle<cr>
" Undotree settings
let g:undotree_SplitWidth = 60
let g:undotree_WindowLayout = 3


" ==================================================================================
" floaterm config
let g:floaterm_keymap_toggle = '<leader>\'
let g:floaterm_height = 0.8
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8


" ==================================================================================
" textobj config
let g:vim_textobj_parameter_mapping = 'p'
xmap n iq
omap n iq

xmap m ij
omap m ij

" ==================================================================================
" ctrlsf config
let g:ctrlsf_auto_focus = {
    \ "at": "start",
    \ "duration_less_than": 1000
    \ }
let g:ctrlsf_winsize = '31%'
inoremap <C-t> <Esc>:CtrlSFToggle<CR>
nnoremap <C-t> :CtrlSFToggle<CR>
let g:ctrlsf_position = 'bottom'

let g:ctrlsf_mapping = {
      \"open"    : ["<CR>", "o"],
      \"openb"   : "O",
      \"split"   : "s",
      \"vsplit"  : "v",
      \"tab"     : "t",
      \"tabb"    : "T",
      \"popen"   : "",
      \"popenf"  : "p",
      \"quit"    : "q",
      \"next"    : "n",
      \"prev"    : "N",
    \ }

" ==================================================================================
" vim-region
map <Space> <Plug>(expand_region_expand)
map <S-S> <Plug>(expand_region_shrink)
" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <cr> <Plug>(coc-range-select)
xmap <silent> <cr> <Plug>(coc-range-select)

" ==================================================================================
" vim-root config
let g:rooter_patterns = ['src', '.git', 'yarn.lock', 'package.json']

" ==================================================================================
" closetag config
let g:closetag_filetypes = 'html,javascript,javascriptreact,typescript,typescriptreact'
let g:closetag_regions = {
  \ 'typescriptreact': 'jsxRegion,tsxRegion',
  \ 'javascriptreact': 'jsxRegion',
  \ }
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'javascript' : 1,
    \ 'javascriptreact' : 1,
    \ 'typescript' : 1,
    \ 'typescriptreact' : 1,
    \}


" ==================================================================================
" indent guide config
let g:indent_guides_enable_on_vim_startup = 1

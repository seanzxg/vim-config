"  vim base config
" set relativenumber
set norelativenumber
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
" syntax enable
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

" coc 会因为backup失效，所以注销掉
" Use backups
" Source:
"   http://stackoverflow.com/a/15317146
" set backup
" set writebackup
" set backupdir=~/.vim/backup//


" Use a specified swap folder
" Source:
"   http://stackoverflow.com/a/15317146
set directory=~/.vim/swap//


" Always show the last line
set display+=lastline

" UTF-8
set encoding=utf-8

" Automatically re-read the file if it has changed
" 自动重新读取文件，如果文件改变
set autoread

" Off on start
set nofoldenable

" Indent seems to work the best
set foldmethod=indent
set foldlevel=20

" :set autochdir
" 重新打开文件,回到上次鼠标悬停的位置
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif 

" 自动改变当前项目的目录
autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif


" Ignore some defaults
" set wildignore=*.o,*.obj,*~,*.pyc
" set wildignore+=.env
" set wildignore+=.env[0-9]+
" set wildignore+=.git,.gitkeep
" set wildignore+=.tmp
" set wildignore+=.coverage
" set wildignore+=*DS_Store*
" set wildignore+=.sass-cache/
" set wildignore+=__pycache__/
" set wildignore+=vendor/rails/**
" set wildignore+=vendor/cache/**
" set wildignore+=*.gem
" set wildignore+=log/**
" set wildignore+=tmp/**
" set wildignore+=.tox/**
" set wildignore+=.idea/**
" set wildignore+=*.egg,*.egg-info
" set wildignore+=*.png,*.jpg,*.gif
" set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**
" set wildignore+=*/.nx/**,*.app

if has('gui_running')
  " macvim 设置node path
  let g:coc_node_path = '/Users/sean/.nvm/versions/node/v12.16.2/bin//node'
  let g:floaterm_keymap_toggle = '<D-j>'
elseif has('nvim')

else
  " 修复vim中，c-w，c-n，c-p在fzf中失效
  let &t_TI = ""
  let &t_TE = ""

endif

if !has("nvim")
  let macvim_skip_colorscheme=1
  set bg=dark                     "设置背景为黑色
  set transparency=1
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
  set macmeta
  set antialias
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
  let g:floaterm_wintype="normal"
endif


let g:gruvbox_bold=0
let g:gruvbox_invert_selection=0

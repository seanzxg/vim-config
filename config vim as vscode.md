## 问题

- [x] 修复emmet提示问题
- [x] 修复nerdtree和coc命令模式冲突
- [ ] snippets失效问题



### 安装

#### 下载

```sh
berw install neovim
git clone git@github.com:seanzxg/vim-config.git
ln -s vim-config/init.vim .vimrc
ln -s vim-config/init.vim .config/nvim/init.vim
ln -s /Users/sean/vim-config/coc-settings.json /Users/sean/.config/nvim/
nvim .vimrc
:PluginInstall
```

#### iTerm配置

打开偏好设置

Profiles-colors-import-`~/vim-config/grouvbox`-选择主题

Keys-key bindings- `+` 

command+/   send++

command+p	send :CtrlP\r

command+.	send ,qf



其他安装

:h provider.txt

npm install -g neovim

or

yarn global add neovim

python3 -m pip install --user --upgrade pynvim

sudo gem install neovim



### 字体

https://vimawesome.com/plugin/vim-devicons

https://github.com/ryanoasis/nerd-fonts#font-installation


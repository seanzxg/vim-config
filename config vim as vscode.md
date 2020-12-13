## 安装

#### 下载

```sh
berw install neovim
git clone git@github.com:seanzxg/vim-config.git
ln -s /Users/sean/vim-config/init.vim /Users/sean/.vimrc
ln -s /Users/sean/vim-config/init.vim /Users/sean/.config/nvim/init.vim
ln -s /Users/sean/vim-config/coc-settings.json /Users/sean/.config/nvim/
nvim .vimrc
:PluginInstall
```

#### 配置命令行

```shell
vim .zshrc
alias vim="nvim"
alias vi="nvim"
alias vm="floaterm"
```

### 创建文件夹

```shell
mkdir .vim
mkdir .vim/undo
mkdir .vim/backup
mkdir .vim/swap
```

### 字体

为了nerttree的文件图标等

https://vimawesome.com/plugin/vim-devicons

https://github.com/ryanoasis/nerd-fonts#font-installation



#### iTerm配置

打开偏好设置

Profiles-colors-import-`~/vim-config/grouvbox`-选择主题

Keys-key bindings- `+` 

command+/   send++

command+p	send :CtrlP\r

command+.	send ,/



#### Provider支持

```shell
:h provider.txt

npm install -g neovim
or
yarn global add neovim

python3 -m pip install --user --upgrade pynvim

sudo gem install neovim

sudo easy_install pip
python2 -m pip install --user --upgrade pynvim

sudo gem install neovim
```







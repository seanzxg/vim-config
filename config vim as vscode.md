## 清单

### vim基础配置



### vim快捷键



### 文件操作



### 命令



### 安装

#### 下载

```sh
berw install neovim
git clone git@github.com:seanzxg/vim-config.git
ln -s vim-config/init.vim .vimrc
ln -s vim-config/init.vim .config/nvim/init.vim
nvim .vimrc
:PluginInstall
```

#### iTerm配置

打开偏好设置

Profiles-colors-import-`~/vim-config/grouvbox`-选择主题

Keys-key bindings- `+` 

command+/   send++

command+p	send :CtrlP\r
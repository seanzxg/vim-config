

## 安装

### neovim

```shell
# mac 安装neovim，其他自行
berw install neovim
# 支持provider,打开命令行
nvim
:h provider
:checkhealth
# 安装以下
python3 -m pip install --user --upgrade pynvim
python2 -m pip install --user --upgrade pynvim
gem install neovim
npm install -g neovim

echo "alias vim=nvim" >> ~/.zshrc
echo "alias vi=nvim" >> ~/.zshrc
```

### 下载

```shll
cd ~
git clone git@github.com:seanzxg/vim-config.git
ln -s /Users/sean/vim-config/init.vim /Users/sean/.vimrc
ln -s /Users/sean/vim-config/init.vim /Users/sean/.config/nvim/init.vim
ln -s /Users/sean/vim-config/coc-settings.json /Users/sean/.config/nvim/
ln -s /Users/sean/vim-config/snippets /Users/sean/.config/nvim/
```

#### 

### 支持

```shell
# 安装vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
       
# 安装ag，用于ctrlsf搜索，其他请自行查看文档https://github.com/ggreer/the_silver_searcher
brew install the_silver_searcher
# 预览图片
pip install Pillow
```

### 安装依赖

```shell
nvim
:PlugInstall
```



## iTerm配置

打开偏好设置

Profiles-colors-import-`~/vim-config/grouvbox`-选择主题

Keys-key bindings- `+` 

command+/   send++

command+p	send :CtrlP\r

command+.	send ,/
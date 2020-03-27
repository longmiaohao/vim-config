## 使用
1. 文件git clone到用户目录
2. 将文件里面到.vimrc, .vimrc.bundles, .vim复制到家目录下
3. 然后进入vim，输入BundleInstall安装插件（YCM里面没有，文件太大, 需要自行下载）, 若没有BundleInstall，则输入下面的命令进行安装
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
4. 如果进入vim出现YouCompleteMe unavailable: requires Vim compiled with Python (2.7.1+ or 3.4+) support，输入 apt install vim-python-jedi
5. vim升级vim8+
```
rpm -Uvh http://mirror.ghettoforge.org/distributions/gf/gf-release-latest.gf.el7.noarch.rpm
rpm --import http://mirror.ghettoforge.org/distributions/gf/RPM-GPG-KEY-gf.el7
yum -y remove vim-minimal vim-common vim-enhanced sudo
yum -y --enablerepo=gf-plus install vim-enhanced sudo
```

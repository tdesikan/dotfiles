Add submodules
===

Instructions are at:
http://www.allenwei.cn/tips-using-git-submodule-keep-your-plugin-up-to-date/


1. Go to root of the repo

    cd dotfiles

2. Add the submodule into the bundle directory

    git submodule add https://github.com/empanda/vim-varnish.git vim/bundle/varnish

3. Register the submodule

    git submodule init

4. Update everything

    git submodule update


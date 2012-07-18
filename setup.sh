#!/bin/bash

if [ ! -d ${HOME}/.dotfiles ] ; then
  echo "No dotfiles - checking out for you"
  echo $HOME
  cd ${HOME} && git clone git@github.com:tdesikan/dotfiles.git .dotfiles
  cd ${HOME}/.dotfiles &&  git submodule update --init
fi

echo "Updating dotfiles"
cd ${HOME}/.dotfiles && git pull && git submodule update --init

# setup vim
ln -s ${HOME}/.dotfiles/vim/vimrc ${HOME}/.vimrc
ln -s ${HOME}/.dotfiles/vim ${HOME}/.vim

# setup bash
ln -s ${HOME}/.dotfiles/bash/bashrc ${HOME}/.bashrc
ln -s ${HOME}/.dotfiles/bash/bash_profile ${HOME}/.bash_profile
ln -s ${HOME}/.dotfiles/bash/bash_aliases ${HOME}/.bash_aliases
ln -s ${HOME}/.dotfiles/bash/bash_aliases_os ${HOME}/.bash_aliases_os
ln -s ${HOME}/.dotfiles/bash/bash_secret ${HOME}/.bash_secret

# setup rvm, gem, git
ln -s ${HOME}/.dotfiles/rvm/rvmrc ${HOME}/.rvmrc
ln -s ${HOME}/.dotfiles/gem/gemrc ${HOME}/.gemrc
ln -s ${HOME}/.dotfiles/git/gitconfig ${HOME}/.gitconfig

# utils
ln -s ${HOME}/.dotfiles/utils/curl_timing_template ${HOME}/.curl_timing_template

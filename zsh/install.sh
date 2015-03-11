#!/bin/sh

if test ! $(which zsh)
then
  echo "  Installing zsh for you."
  curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh > /tmp/oh-my-zsh-install.log
fi

# make a symlink for my theme

if ! [ -h ~/.oh-my-zsh/custom/themes/brett.zsh-theme ]
  then
    echo "  Creating symlink for custom theme."
    mkdir -p ~/.oh-my-zsh/custom/themes
    ln -s /Users/bhardin/.dotfiles/zsh/brett.zsh-theme ~/.oh-my-zsh/custom/themes/brett.zsh-theme
fi

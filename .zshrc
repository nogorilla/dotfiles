# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="aussiegeek-custom"
ZSH_THEME="spaceship"

SPACESHIP_DOCKER_SHOW="false"

ENABLE_CORRECTION="false"

plugins=(git zsh-syntax-highlighting brew sublime common-aliases osx)

source $ZSH/oh-my-zsh.sh

source $HOME/.dotfiles/.functions
source $HOME/.dotfiles/.utils
source $HOME/.dotfiles/.path

#############################
## ----- ALIAS files ----- ##
#############################
source $HOME/.dotfiles/aliases/.general
source $HOME/.dotfiles/aliases/.mongo
source $HOME/.dotfiles/aliases/.php
source $HOME/.dotfiles/aliases/.python
source $HOME/.dotfiles/aliases/.postgres
source $HOME/.dotfiles/aliases/.redis
source $HOME/.dotfiles/aliases/.ruby

DISABLE_AUTO_TITLE="false"

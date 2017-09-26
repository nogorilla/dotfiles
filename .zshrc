# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="aussiegeek-custom"
ZSH_THEME="spaceship"

SPACESHIP_DOCKER_SHOW="false"
SPACESHIP_BATTERY_SHOW="false"

ENABLE_CORRECTION="false"

plugins=(git zsh-syntax-highlighting brew sublime common-aliases osx)

source $ZSH/oh-my-zsh.sh

source $HOME/.dotfiles/functions.sh
source $HOME/.dotfiles/utils.sh
source $HOME/.dotfiles/path.sh

source $HOME/.dotfiles/apps/code.sh

#############################
## ----- ALIAS files ----- ##
#############################
source $HOME/.dotfiles/aliases/general.sh
source $HOME/.dotfiles/aliases/mongo.sh
source $HOME/.dotfiles/aliases/php.sh
source $HOME/.dotfiles/aliases/python.sh
source $HOME/.dotfiles/aliases/postgres.sh
source $HOME/.dotfiles/aliases/redis.sh
source $HOME/.dotfiles/aliases/ruby.sh

DISABLE_AUTO_TITLE="false"

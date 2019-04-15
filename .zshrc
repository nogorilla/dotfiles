# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#########
# THEMES
#########
DISABLE_AUTO_TITLE="false"
SPACESHIP_ROOT="/Users/gabe/.oh-my-zsh/custom/themes/spaceship-prompt"
ZSH_THEME="spaceship"
# Set Spaceship ZSH as a prompt
# autoload -U promptinit; promptinit
# prompt spaceship
SPACESHIP_DOCKER_SHOW="false"
SPACESHIP_BATTERY_SHOW="true"
SPACESHIP_BATTERY_THRESHOLD="50"
SPACESHIP_AWS_PREFIX="AWS "
SPACESHIP_AWS_SYMBOL="☁️  "

ENABLE_CORRECTION="false"

plugins=(git gitfast zsh-syntax-highlighting brew common-aliases osx)

source $ZSH/oh-my-zsh.sh

source $HOME/.dotfiles/functions.sh
if [ -e $HOME/.dotfiles/secret.sh ]; then
  source $HOME/.dotfiles/secret.sh
fi

export GIT_EDITOR='vim'
export EDITOR='codee'
export NODE_ENV='development'
export NVM_DIR="/Users/gabe/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -f /Users/gabe/.travis/travis.sh ] && source /Users/gabe/.travis/travis.sh

export PATH="$HOME/bin:/usr/local/sbin:/usr/local/opt/openssl/bin:/usr/local/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
if [ -e /usr/local/etc/profile.d/z.sh ]; then
  . /usr/local/etc/profile.d/z.sh
fi

alias ag='ag -p /Users/gabe/.agignore'
alias cat='bat'
alias cdd='z'
alias codee='code .'
alias copy="tr -d '\n' | pbcopy"
alias cwd="pwd | tr -d '\n' | pbcopy"
alias dc='docker-compose'
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias git=hub
alias git_undo='git reset --soft HEAD\^'
alias h='history | grep'
alias ll='exa -al --group-directories-first'
alias lg='lazygit'
alias path='open -a "Path Finder" ./'
alias ping='prettyping --nolegend'
alias st='open -a SourceTree'
alias status='glances'
alias weather='curl -4 wttr.in'
alias work='cd /Users/gabe/workspace/alchemy'
alias clear-downloads='sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* "delete from LSQuarantineEvent"'

eval "$(thefuck --alias)"

#######################
## --- functions --- ##
#######################
function setaws {
  if [ ! -n "$1" ]; then
    echo "Enter a region name"
  else
    export AWS_PROFILE=$1
  fi
}

########################
## --- serverless --- ##
########################
alias sd='sls deploy -s'
alias sdf='sls deploy function -f'
alias si='sls invoke -f'
alias sil='sls invoke local -f'
alias sl='sls logs -t -f'

################
## --- go --- ##
################
# export GOPATH=$HOME/workspace/go # don't forget to change your path correctly!
# export GOROOT=/usr/local/opt/go/libexec
# export PATH=$PATH:$GOPATH/bin
# export PATH=$PATH:$GOROOT/bin

####################
## --- python --- ##
####################
alias python='python3'

eval $(thefuck --alias)
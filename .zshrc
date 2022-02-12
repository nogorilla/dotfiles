# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#########
# THEMES
#########
eval "$(starship init zsh)"
# # SPACESHIP_ROOT="/Users/gabe/.oh-my-zsh/custom/themes/spaceship-prompt"
# # ZSH_THEME="spaceship"
# SPACESHIP_DOCKER_SHOW="false"
# SPACESHIP_BATTERY_SHOW="true"
# SPACESHIP_BATTERY_THRESHOLD="50"
# SPACESHIP_AWS_PREFIX="AWS "
# SPACESHIP_AWS_SYMBOL="☁️  "

# ENABLE_CORRECTION="false"

# source ~/.dotfiles/.p10k.zsh

plugins=(git gitfast brew common-aliases macos)
source $ZSH/oh-my-zsh.sh
source $HOME/.dotfiles/functions.sh
if [ -e $HOME/.dotfiles/secret.sh ]; then
  source $HOME/.dotfiles/secret.sh
fi

export GIT_EDITOR='vim'
export EDITOR='codee'
export NODE_ENV='development'
export NVM_DIR="/Users/gabe/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  --no-use # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH}:/usr/local/opt/libffi/lib/pkgconfig"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH="$HOME/bin:$JAVA_HOME/bin:/usr/local/opt/gnu-getopt/bin:/usr/local/sbin:/usr/local/opt/openssl/bin:/usr/local/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
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
alias tf=terraform
alias tree='tree -C'
alias sqlite=sqlite3
alias tv=tidy-viewer

########################
## --- serverless --- ##
########################
alias sd='sls deploy -s'
alias sdf='sls deploy function -f'
alias si='sls invoke -f'
alias sil='sls invoke local -f'
alias sl='sls logs -t -f'

eval "$(thefuck --alias)"

#######################
## --- functions --- ##
#######################
function setaws {
  if [ ! -n "$1" ]; then
  else
    export AWS_PROFILE=$1
  fi
}

################
## --- go --- ##
################
export GOPATH=$HOME/workspace/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

####################
## --- python --- ##
####################
# alias python=/usr/local/bin/python3
# alias pip=/usr/local/bin/pip3
# if command -v pyenv 1>/dev/null 2>&1; then
#   eval "$(pyenv init -)"
# fi
# eval "$(pyenv init -)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

##################
## --- ruby --- ##
##################
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH


# export WORKON_HOME=~/.virtualenvs
# export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
# source /usr/local/bin/virtualenvwrapper.sh
# alias penv='python3.7 -m venv'
# alias pm='python manage.py'
# export PYTHONPATH="/usr/local/Cellar/python/3.7.0/bin/python3:$PYTHONPATH"

# export PIP_REQUIRE_VIRTUALENV=true
# export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
# source /usr/local/bin/virtualenvwrapper_lazy.sh

# gpip(){
#    PIP_REQUIRE_VIRTUALENV="0" pip3 "$@"
# }

#####################
## --- flutter --- ##
#####################
alias android="open -a /Applications/Android\ Studio.app ."
export PATH=$PATH:/Users/gabe/workspace/sdk/flutter/bin:/usr/local/opt/sqlite/bin

export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"

export OPENAUDIBLE_HOME="/Users/gabe/Downloads/OpenAudible"
export PATH="/usr/local/opt/autoconf@2.69/bin:$PATH"
export MACOSX_DEPLOYMENT_TARGET=10.0
# # tabtab source for serverless package
# # uninstall by removing these lines
# [[ -f ~/.config/btab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
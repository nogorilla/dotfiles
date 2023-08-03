# Path to your oh-my-zsh installation.
ZSH_DISABLE_COMPFIX=true
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

typeset -U path
#########
# THEMES
#########
eval "$(starship init zsh)"
# eval "$(rbenv init - zsh)"
# # SPACESHIP_ROOT="/Users/gabe/.oh-my-zsh/custom/themes/spaceship-prompt"
# # ZSH_THEME="spaceship"
# SPACESHIP_DOCKER_SHOW="false"
# SPACESHIP_BATTERY_SHOW="true"
# SPACESHIP_BATTERY_THRESHOLD="50"
# SPACESHIP_AWS_PREFIX="AWS "
# SPACESHIP_AWS_SYMBOL="☁️  "

# ENABLE_CORRECTION="false"

# curl -o ~/.zsh/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
# curl -o ~/.zsh/_git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
plugins=(git git-extras gitfast brew common-aliases macos fzf )
fpath=($HOME/.zsh $fpath)
autoload -Uz compinit && compinit
zstyle ':completion:*:*:git:*' script $HOME/.zsh/.git-completion.bash

source $HOME/.dotfiles/functions.sh
if [ -e $HOME/.dotfiles/secret.sh ]; then
  source $HOME/.dotfiles/secret.sh
fi

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export GIT_EDITOR='vim'
export EDITOR='codee'
export NVM_DIR="$HOME/.nvm"
export GOOGLE_APPLICATION_CREDENTIALS=$HOME/ls-gateway-stage-5a17-fe9e2ee6820c.json
export NODE_ENV=development
export ENVIRONMENT=development

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  --no-use # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
#   . /opt/local/etc/profile.d/bash_completion.sh
# fi

export PKG_CONFIG_PATH="${PKG_CONFIG_PATH}:/usr/local/opt/libffi/lib/pkgconfig"
# export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# if [ -e /usr/local/etc/profile.d/z.sh ]; then
#   . /usr/local/etc/profile.d/z.sh
# fi

if [ -e /opt/homebrew/etc/profile.d/z.sh ]; then
  . /opt/homebrew/etc/profile.d/z.sh
fi

alias ag='ag -p /Users/gabe/.agignore'
alias cat='bat'
alias cdd='z'
alias clear-downloads='sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* "delete from LSQuarantineEvent"'
alias codee='code .'
alias copy="tr -d '\n' | pbcopy"
alias cwd="pwd | tr -d '\n' | pbcopy"
alias dc='docker-compose'
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias ep="echo ${PATH} | sed -e $'s/:/\\\n/g'"
alias git_undo='git reset --soft HEAD\^'
# alias git=hub
alias h='history | grep'
alias ld='lazydocker'
alias lg='lazygit'
alias ll='exa -al --group-directories-first'
alias path='open -a "Path Finder" ./'
alias ping='prettyping --nolegend'
alias sqlite=sqlite3
alias st='open -a SourceTree'
alias tf=terraform
alias tree='tree -C'
alias tv=tidy-viewer
alias weather='curl -4 wttr.in'
alias work='cd /Users/gabe/workspace/procter-gamble'

##################
## --- asdf --- ##
##################
. /opt/homebrew/opt/asdf/libexec/asdf.sh

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
export AWS_PAGER=""
export LESS="-F -X -R"

################
## --- go --- ##
################
export GOPATH=$HOME/.go
export GOROOT=/opt/homebrew/opt/go/libexec

####################
## --- python --- ##
####################
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
# export PYENV_VIRTUALENV_DISABLE_PROMPT=1

##################
## --- ruby --- ##
##################
# export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"
# export GEM_HOME=$HOME/gems
# export PATH=$HOME/gems/bin:$PATH


export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.sdk

# export LDFLAGS="-L/usr/local/opt/zlib/lib"
# export CPPFLAGS="-I/usr/local/opt/zlib/include"
export OPENAUDIBLE_HOME="/Users/gabe/Downloads/OpenAudible"
# export PATH="/usr/local/opt/autoconf@2.69/bin:/opt/homebrew/opt/openjdk/bin:$PATH"
# export MACOSX_DEPLOYMENT_TARGET=10.0
# export HOMEBREW_NO_INSTALL_CLEANUP=TRUE

path+=(
  "$HOME/bin"
  "/usr/local/opt/gnu-getopt/bin"
  "/usr/local/sbin"
  "/usr/local/opt/openssl/bin"
  "/usr/local/bin"
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
  "/usr/local/opt/autoconf@2.69/bin"
  "/opt/homebrew/opt/openjdk/bin"
  "$GOPATH/bin"
  "$GOROOT/bin"
  "$HOME/.spicetify"
  "$HOME/.rover/bin"
  "$HOME/.goole-cloud-sdk/bin"
  "$HOME/.pub-cache/bin"
)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/gabe/.google-cloud-sdk/path.zsh.inc' ]; then . '/Users/gabe/.google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/gabe/.google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/gabe/.google-cloud-sdk/completion.zsh.inc'; fi
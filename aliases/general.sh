# alias ll='gls -al --si --color=auto --group-directories-first'
alias ll='exa -al --group-directories-first'

alias copy="tr -d '\n' | pbcopy"
alias cwd="pwd | tr -d '\n' | pbcopy"
alias path='open -a "Path Finder" ./'
alias work='cd /Users/gabe/workspace/alchemy'
alias weather='curl -4 wttr.in'
alias ag='ag -p /Users/gabe/.agignore'
alias git_undo='git reset --soft HEAD\^'
alias cdd='z'
alias status='glances'
alias h='history | grep'
alias lg='lazygit'
alias cat='bat'
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias ping='prettyping --nolegend'
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias bump="bump --config /Users/gabe/.bump.json"
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"


# clear down load history
alias clear-downloads='sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* "delete from LSQuarantineEvent"'

eval "$(thefuck --alias)"
[ -f /Users/gabe/.travis/travis.sh ] && source /Users/gabe/.travis/travis.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# alias ll='gls -al --si --color=auto --group-directories-first'

alias ag='ag -p /Users/gabe/.agignore'
alias cat='bat'
alias cdd='z'
alias copy="tr -d '\n' | pbcopy"
alias cwd="pwd | tr -d '\n' | pbcopy"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias git_undo='git reset --soft HEAD\^'
alias h='history | grep'
alias ll='exa -al --group-directories-first'
alias lg='lazygit'
alias path='open -a "Path Finder" ./'
alias ping='prettyping --nolegend'
alias status='glances'
alias weather='curl -4 wttr.in'
alias work='cd /Users/gabe/workspace/alchemy'

# clear down load history
alias clear-downloads='sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* "delete from LSQuarantineEvent"'

eval "$(thefuck --alias)"
[ -f /Users/gabe/.travis/travis.sh ] && source /Users/gabe/.travis/travis.sh

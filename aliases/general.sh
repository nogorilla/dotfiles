alias ll='gls -al --si --color=auto --group-directories-first'

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

# clear down load history
alias clear-downloads='sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* "delete from LSQuarantineEvent"'

eval "$(thefuck --alias)"

alias ll='gls -al --si --color=auto --group-directories-first'

alias copy="tr -d '\n' | pbcopy"
alias cwd="pwd | tr -d '\n' | pbcopy"
alias vssh="ssh vagrant@127.0.0.1 -p 2222"
alias path='open -a "Path Finder" ./'
alias work='cd /Users/gabe/workspace'
alias weather='curl -4 wttr.in'
alias ag='ag -p /Users/gabe/.agignore'
alias git_undo='git reset --soft HEAD\^'

# clear down load history
alias clear-downloads='sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* "delete from LSQuarantineEvent"'

eval "$(thefuck --alias)"
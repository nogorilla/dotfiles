##################
# ruby/rails stuff
##################
alias be='bundle exec'
alias mm='bundle exec middleman'
alias rordb='bundle exec rake environment db:drop && bundle exec rake db:create && bundle exec rake db:migrate && bundle exec rake db:seed && bundle exec rake db:test:prepare'
export PATH="$HOME/.rbenv/bin:$HOME/rbenv/shims:$PATH"
alias rserve='ruby -run -e httpd . -p8080'

export RBENV_SHELL=zsh
source '/usr/local/Cellar/rbenv/1.1.1/libexec/../completions/rbenv.zsh'
command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(rbenv "sh-$command" "$@")";;
  *)
    command rbenv "$command" "$@";;
  esac
}
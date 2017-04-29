##################
# ruby/rails stuff
##################
alias re='rbenv'
alias be='bundle exec'
alias mm='bundle exec middleman'
alias rordb='bundle exec rake environment db:drop && bundle exec rake db:create && bundle exec rake db:migrate && bundle exec rake db:seed && bundle exec rake db:test:prepare'
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
alias rserve='ruby -run -e httpd . -p8080'
